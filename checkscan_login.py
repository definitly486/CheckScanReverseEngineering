#!/usr/bin/env python3
"""
CheckScan sign-in helper (personal account).

Recovered protocol (static analysis + live probe against api.checkscan.org):

  1. GET  /api/v2.1/users/anon
        → {username, password}  (anonymous guest credentials)
  2. POST /api/v2.1/login   (application/x-www-form-urlencoded)
        body: username, password
        → Set-Cookie: remember-me=...
  3. POST /api/v2.1/users/signin/v2
        JSON: phone, allowSmsNotifications, confirmType, referral, fromOnboarding
        → verification challenge, examples:
            SMS:   {"confirmType":"SMS","target":"+7...","codeLength":4}
            EMAIL: {"confirmType":"EMAIL","target":"+7...","codeLength":4}
            CALL:  {"callPhone":"+7800...","hasEmail":true,"emailMask":"..."}
  4a. SMS challenge → POST /api/v2.1/users/signup/confirm/v2
        JSON: phone, code, allowSmsNotifications, referral, fromOnboarding
        (SignUpConfirm / VerificationRequest — no destinationType)
  4b. CALL/EMAIL challenge → POST /api/v2.1/users/signin/confirm/v2
        JSON: phone, destinationType (USER_CALL | EMAIL), code

App headers required on checkscan.org hosts (from ev3 interceptor):
  Os, store, App-version, X-TZ-OFFSET, Test-group-id

confirmType enum (dw1): SMS, EMAIL, CALL
destinationType enum (am2): USER_CALL, EMAIL  (only for signin/confirm)

In the app, "try email" / "try SMS" is signInRetry with another confirmType
(re-POST signin/v2), not a separate endpoint.
"""
from __future__ import annotations

import argparse
import getpass
import json
import sys
import time
from pathlib import Path
from typing import Any

import requests

BASE_URL = "https://api.checkscan.org"
ANON_PATH = "/api/v2.1/users/anon"
LOGIN_PATH = "/api/v2.1/login"
SIGNIN_PATH = "/api/v2.1/users/signin/v2"
SIGNIN_CONFIRM_PATH = "/api/v2.1/users/signin/confirm/v2"
SIGNUP_CONFIRM_PATH = "/api/v2.1/users/signup/confirm/v2"

# From APK: App-version hard-coded in ev3 interceptor
APP_VERSION = "2.14.5.79"
DEFAULT_STATE = Path.home() / ".config" / "checkscan" / "auth-response.json"

VALID_CONFIRM_TYPES = ("SMS", "EMAIL", "CALL")
VALID_DESTINATION_TYPES = ("USER_CALL", "EMAIL")


def build_session(os_name: str = "ANDROID", store: str = "GP") -> requests.Session:
    """Session with the headers the official client sends to checkscan.org."""
    tz_offset_ms = -time.timezone * 1000 if time.daylight == 0 else -time.altzone * 1000
    try:
        tz_offset_ms = int(-time.localtime().tm_gmtoff * 1000)  # type: ignore[attr-defined]
    except Exception:
        pass

    session = requests.Session()
    session.headers.update(
        {
            "Accept": "application/json",
            "User-Agent": "okhttp/4.12.0",
            "Os": os_name,
            "store": store,
            "App-version": APP_VERSION,
            "X-TZ-OFFSET": str(tz_offset_ms),
            "Test-group-id": "0",
        }
    )
    return session


def request_json(
    session: requests.Session,
    method: str,
    path: str,
    *,
    json_body: dict[str, Any] | None = None,
    form_body: dict[str, str] | None = None,
) -> Any:
    url = BASE_URL.rstrip("/") + path
    headers: dict[str, str] = {}
    if json_body is not None:
        headers["Content-Type"] = "application/json"
    if form_body is not None:
        headers["Content-Type"] = "application/x-www-form-urlencoded"

    response = session.request(
        method,
        url,
        json=json_body,
        data=form_body,
        headers=headers,
        timeout=(15, 45),
    )

    if not response.ok:
        print(f"HTTP {response.status_code} from {method} {path}", file=sys.stderr)
        for name in ("WWW-Authenticate", "Content-Type", "Server", "X-Request-ID", "Set-Cookie"):
            value = response.headers.get(name)
            if value:
                print(f"  {name}: {value}", file=sys.stderr)
        try:
            print(json.dumps(response.json(), ensure_ascii=False, indent=2), file=sys.stderr)
        except ValueError:
            print(response.text[:1500], file=sys.stderr)
        response.raise_for_status()

    if not response.content:
        return None
    try:
        return response.json()
    except ValueError as exc:
        raise RuntimeError(
            f"Expected JSON from {path}, got {response.text[:500]!r}"
        ) from exc


def mask(value: str) -> str:
    value = value.strip()
    if len(value) < 5:
        return "***"
    return value[:2] + "*" * (len(value) - 4) + value[-2:]


def save_private(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    try:
        path.chmod(0o600)
        path.parent.chmod(0o700)
    except OSError:
        pass


def establish_guest_session(session: requests.Session) -> dict[str, Any]:
    """
    Create anonymous credentials and exchange them for a remember-me cookie.
    Without this step every protected route (including signin) returns 401.
    """
    anon = request_json(session, "GET", ANON_PATH)
    if not isinstance(anon, dict) or "username" not in anon or "password" not in anon:
        raise RuntimeError(f"Unexpected anon response: {anon!r}")

    login = request_json(
        session,
        "POST",
        LOGIN_PATH,
        form_body={
            "username": anon["username"],
            "password": anon["password"],
        },
    )
    if "remember-me" not in session.cookies:
        print(
            "Warning: login succeeded but no remember-me cookie was set.",
            file=sys.stderr,
        )
    return {"anon": anon, "login": login}


def classify_challenge(signin_response: Any) -> str:
    """
    Return 'SMS' | 'USER_CALL' | 'EMAIL' based on the sign-in challenge body.

    Priority: explicit confirmType from the server, then shape of the payload.
    """
    if not isinstance(signin_response, dict):
        return "SMS"

    confirm = str(signin_response.get("confirmType") or "").upper()
    if confirm in ("SMS", "EMAIL", "CALL"):
        if confirm == "CALL":
            return "USER_CALL"
        return confirm

    if signin_response.get("callPhone"):
        return "USER_CALL"
    if signin_response.get("emailMask") or signin_response.get("email"):
        return "EMAIL"
    if "codeLength" in signin_response:
        return "SMS"
    return "SMS"


def main() -> int:
    parser = argparse.ArgumentParser(
        description="CheckScan login (anon session → OTP / call / email confirm)"
    )
    parser.add_argument("--phone", help="Phone in international format, e.g. +7...")
    parser.add_argument(
        "--confirm-type",
        default="SMS",
        choices=VALID_CONFIRM_TYPES,
        help="signin confirmType (SMS/EMAIL/CALL). Server decides the actual challenge.",
    )
    parser.add_argument(
        "--destination-type",
        choices=VALID_DESTINATION_TYPES,
        help="Only for CALL/EMAIL challenges. Auto-detected when omitted.",
    )
    parser.add_argument(
        "--code",
        help="One-time code. If omitted, prompted interactively.",
    )
    parser.add_argument(
        "--state",
        type=Path,
        default=DEFAULT_STATE,
        help=f"private JSON output (default: {DEFAULT_STATE})",
    )
    parser.add_argument("--os", default="ANDROID", help="Os header (default ANDROID)")
    parser.add_argument("--store", default="GP", help="store header: GP/RU/XI/HU/android")
    args = parser.parse_args()

    phone = (args.phone or input("Phone (+country code): ")).strip()
    if not phone:
        parser.error("phone is required")

    session = build_session(os_name=args.os, store=args.store)

    print("1) Creating anonymous session…")
    guest = establish_guest_session(session)
    login_info = guest.get("login") if isinstance(guest.get("login"), dict) else {}
    print(
        f"   guest id={login_info.get('id', '?')}  isAnon={login_info.get('isAnon', '?')}"
    )

    start_payload = {
        "phone": phone,
        "allowSmsNotifications": False,
        "confirmType": args.confirm_type.upper(),
        "referral": None,
        "fromOnboarding": False,
    }
    print(f"2) POST {SIGNIN_PATH}  confirmType={args.confirm_type.upper()}")
    start_result = request_json(session, "POST", SIGNIN_PATH, json_body=start_payload)
    print("Sign-in challenge:")
    print(json.dumps(start_result, ensure_ascii=False, indent=2))

    challenge = classify_challenge(start_result)
    print(f"\nDetected challenge type: {challenge}")

    if challenge == "SMS":
        length = start_result.get("codeLength") if isinstance(start_result, dict) else None
        hint = f" ({length} digits)" if length else ""
        print(f"Enter the SMS code{hint} sent to {phone}.")
    elif challenge == "USER_CALL":
        call_phone = start_result.get("callPhone") if isinstance(start_result, dict) else None
        email_mask = start_result.get("emailMask") if isinstance(start_result, dict) else None
        print(
            f"Call {call_phone or 'the number from the response'} from {phone}, "
            "then enter the code (last digits / app code)."
        )
        if email_mask:
            print(
                f"Or restart with --confirm-type EMAIL to get a code at {email_mask}."
            )
    else:  # EMAIL
        length = start_result.get("codeLength") if isinstance(start_result, dict) else None
        hint = f" ({length} digits)" if length else ""
        # emailMask is often only present on CALL challenges; target may be the phone
        email_hint = ""
        if isinstance(start_result, dict):
            email_hint = start_result.get("emailMask") or start_result.get("email") or ""
        if email_hint:
            print(f"Enter the code{hint} sent to {email_hint}.")
        else:
            print(
                f"Enter the email code{hint} "
                "(sent to the address linked to this phone in CheckScan)."
            )

    code = (args.code or getpass.getpass("One-time code (input hidden): ")).strip()
    if not code:
        print("No code entered; exiting.", file=sys.stderr)
        return 2

    if challenge == "SMS":
        # SignUpConfirm / VerificationRequest — VerificationSmsPresenter
        confirm_path = SIGNUP_CONFIRM_PATH
        confirm_payload: dict[str, Any] = {
            "phone": phone,
            "code": code,
            "allowSmsNotifications": False,
            "referral": None,
            "fromOnboarding": False,
        }
        print(f"3) POST {confirm_path}  (SMS / signup confirm)")
    else:
        # SignInConfirm — USER_CALL or EMAIL (am2 enum)
        destination = args.destination_type or challenge  # USER_CALL | EMAIL
        if destination not in VALID_DESTINATION_TYPES:
            print(
                f"Invalid destinationType {destination!r}; "
                f"expected one of {VALID_DESTINATION_TYPES}",
                file=sys.stderr,
            )
            return 2
        confirm_path = SIGNIN_CONFIRM_PATH
        confirm_payload = {
            "phone": phone,
            "destinationType": destination,
            "code": code,
        }
        print(f"3) POST {confirm_path}  destinationType={destination}")

    confirm_result = request_json(
        session, "POST", confirm_path, json_body=confirm_payload
    )

    state = {
        "api_base": BASE_URL,
        "phone_masked": mask(phone),
        "challenge_type": challenge,
        "guest_login": guest.get("login"),
        "signin_response": start_result,
        "confirm_path": confirm_path,
        "confirm_response": confirm_result,
        "cookies": requests.utils.dict_from_cookiejar(session.cookies),
    }
    save_private(args.state, state)

    print("\nConfirmation response:")
    print(json.dumps(confirm_result, ensure_ascii=False, indent=2))
    print(f"\nSaved response/cookies to: {args.state}")
    print(
        "Session is held by the remember-me cookie. "
        "Reuse the cookies from the state file for further API calls."
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except requests.RequestException as exc:
        print(f"Network/API error: {exc}", file=sys.stderr)
        raise SystemExit(1)
    except KeyboardInterrupt:
        print("\nInterrupted.", file=sys.stderr)
        raise SystemExit(130)
