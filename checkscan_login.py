#!/usr/bin/env python3
"""
CheckScan helper: login + daily ad-bonus status.

Auth flow (recovered):
  GET  /api/v2.1/users/anon
  POST /api/v2.1/login          (form: username, password) → remember-me cookie
  POST /api/v2.1/users/signin/v2
  confirm via signup/confirm (SMS) or signin/confirm (USER_CALL|EMAIL)

Daily ad bonus (screen «Задания» → «Ежедневный бонус за рекламу»):
  GET  /api/v2.1/ad/promo/available
  GET  /api/v2.1/tasks/main
  POST /api/v2.1/ad/promo/view   (after watching; not auto-called here)

App headers (ev3): Os, store, App-version, X-TZ-OFFSET, Test-group-id
"""
from __future__ import annotations

import argparse
import getpass
import json
import sys
import time
from datetime import datetime, timezone, timedelta
from pathlib import Path
from typing import Any

import requests

BASE_URL = "https://api.checkscan.org"
ANON_PATH = "/api/v2.1/users/anon"
LOGIN_PATH = "/api/v2.1/login"
SIGNIN_PATH = "/api/v2.1/users/signin/v2"
SIGNIN_CONFIRM_PATH = "/api/v2.1/users/signin/confirm/v2"
SIGNUP_CONFIRM_PATH = "/api/v2.1/users/signup/confirm/v2"
AD_PROMO_AVAILABLE = "/api/v2.1/ad/promo/available"
AD_PROMO_VIEW = "/api/v2.1/ad/promo/view"
TASKS_MAIN = "/api/v2.1/tasks/main"
TASKS_LIST = "/api/v2.1/tasks"

APP_VERSION = "2.14.5.79"
DEFAULT_STATE = Path.home() / ".config" / "checkscan" / "auth-response.json"

VALID_CONFIRM_TYPES = ("SMS", "EMAIL", "CALL")
VALID_DESTINATION_TYPES = ("USER_CALL", "EMAIL")


# ---------------------------------------------------------------------------
# HTTP / session
# ---------------------------------------------------------------------------

def build_session(os_name: str = "ANDROID", store: str = "GP") -> requests.Session:
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


def load_session_from_state(state_path: Path, os_name: str, store: str) -> requests.Session:
    if not state_path.is_file():
        raise SystemExit(
            f"No saved session at {state_path}. Run login first:\n"
            f"  python3 checkscan_login.py login --phone +7..."
        )
    state = json.loads(state_path.read_text(encoding="utf-8"))
    cookies = state.get("cookies") or {}
    if not cookies:
        raise SystemExit(f"State file {state_path} has no cookies; login again.")

    session = build_session(os_name=os_name, store=store)
    for name, value in cookies.items():
        session.cookies.set(name, value, domain="api.checkscan.org", path="/")
    return session


# ---------------------------------------------------------------------------
# Auth
# ---------------------------------------------------------------------------

def establish_guest_session(session: requests.Session) -> dict[str, Any]:
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
        print("Warning: login succeeded but no remember-me cookie was set.", file=sys.stderr)
    return {"anon": anon, "login": login}


def classify_challenge(signin_response: Any) -> str:
    if not isinstance(signin_response, dict):
        return "SMS"
    confirm = str(signin_response.get("confirmType") or "").upper()
    if confirm in ("SMS", "EMAIL", "CALL"):
        return "USER_CALL" if confirm == "CALL" else confirm
    if signin_response.get("callPhone"):
        return "USER_CALL"
    if signin_response.get("emailMask") or signin_response.get("email"):
        return "EMAIL"
    return "SMS"


def cmd_login(args: argparse.Namespace) -> int:
    phone = (args.phone or input("Phone (+country code): ")).strip()
    if not phone:
        print("phone is required", file=sys.stderr)
        return 2

    session = build_session(os_name=args.os, store=args.store)

    print("1) Creating anonymous session…")
    guest = establish_guest_session(session)
    login_info = guest.get("login") if isinstance(guest.get("login"), dict) else {}
    print(f"   guest id={login_info.get('id', '?')}  isAnon={login_info.get('isAnon', '?')}")

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
            "then enter the code."
        )
        if email_mask:
            print(f"Or restart with --confirm-type EMAIL for code at {email_mask}.")
    else:
        length = start_result.get("codeLength") if isinstance(start_result, dict) else None
        hint = f" ({length} digits)" if length else ""
        email_hint = ""
        if isinstance(start_result, dict):
            email_hint = start_result.get("emailMask") or start_result.get("email") or ""
        if email_hint:
            print(f"Enter the code{hint} sent to {email_hint}.")
        else:
            print(f"Enter the email code{hint} (address linked to this phone).")

    code = (args.code or getpass.getpass("One-time code (input hidden): ")).strip()
    if not code:
        print("No code entered; exiting.", file=sys.stderr)
        return 2

    if challenge == "SMS":
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
        destination = args.destination_type or challenge
        if destination not in VALID_DESTINATION_TYPES:
            print(f"Invalid destinationType {destination!r}", file=sys.stderr)
            return 2
        confirm_path = SIGNIN_CONFIRM_PATH
        confirm_payload = {
            "phone": phone,
            "destinationType": destination,
            "code": code,
        }
        print(f"3) POST {confirm_path}  destinationType={destination}")

    confirm_result = request_json(session, "POST", confirm_path, json_body=confirm_payload)

    state = {
        "api_base": BASE_URL,
        "phone_masked": mask(phone),
        "challenge_type": challenge,
        "guest_login": guest.get("login"),
        "signin_response": start_result,
        "confirm_path": confirm_path,
        "confirm_response": confirm_result,
        "cookies": requests.utils.dict_from_cookiejar(session.cookies),
        "saved_at": datetime.now(timezone.utc).isoformat(),
    }
    save_private(args.state, state)

    print("\nConfirmation response:")
    print(json.dumps(confirm_result, ensure_ascii=False, indent=2))
    print(f"\nSaved response/cookies to: {args.state}")
    return 0


# ---------------------------------------------------------------------------
# Daily ad bonus
# ---------------------------------------------------------------------------

def _as_list(data: Any) -> list[Any]:
    if data is None:
        return []
    if isinstance(data, list):
        return data
    if isinstance(data, dict):
        for key in ("items", "tasks", "content", "blocks", "data", "list"):
            if isinstance(data.get(key), list):
                return data[key]
        return [data]
    return []


def _dig_timer_fields(obj: Any, path: str = "") -> list[tuple[str, Any]]:
    """Collect keys that look like availability / countdown / video progress."""
    found: list[tuple[str, Any]] = []
    interesting = (
        "available", "cooldown", "timer", "second", "remain", "next", "left",
        "count", "video", "watch", "promo", "reward", "claim", "active",
        "unlock", "reset", "until", "expire", "delay", "limit", "progress",
    )
    if isinstance(obj, dict):
        for k, v in obj.items():
            p = f"{path}.{k}" if path else str(k)
            kl = str(k).lower()
            if any(t in kl for t in interesting):
                if not isinstance(v, (dict, list)):
                    found.append((p, v))
            found.extend(_dig_timer_fields(v, p))
    elif isinstance(obj, list):
        for i, item in enumerate(obj[:30]):
            found.extend(_dig_timer_fields(item, f"{path}[{i}]"))
    return found


def _format_seconds(sec: float | int | None) -> str:
    if sec is None:
        return "?"
    try:
        sec = int(sec)
    except (TypeError, ValueError):
        return str(sec)
    if sec < 0:
        sec = 0
    h, rem = divmod(sec, 3600)
    m, s = divmod(rem, 60)
    if h:
        return f"{h:02d}:{m:02d}:{s:02d}"
    return f"{m:02d}:{s:02d}"


def _parse_epoch_or_seconds(value: Any) -> tuple[str, float | None]:
    """
    Return (kind, seconds).
    kind: 'countdown' | 'epoch' | 'unknown'
    """
    if value is None or isinstance(value, bool):
        return "unknown", None
    if isinstance(value, str):
        # ISO datetime?
        try:
            dt = datetime.fromisoformat(value.replace("Z", "+00:00"))
            left = (dt - datetime.now(timezone.utc)).total_seconds()
            return "epoch", left
        except ValueError:
            return "unknown", None
    try:
        num = float(value)
    except (TypeError, ValueError):
        return "unknown", None
    # Heuristic: ms epoch vs seconds epoch vs pure countdown
    now = time.time()
    if num > 1e12:  # ms epoch
        return "epoch", num / 1000.0 - now
    if num > 1e9:  # sec epoch
        return "epoch", num - now
    if 0 <= num <= 7 * 24 * 3600:  # up to a week countdown
        return "countdown", num
    return "unknown", num



def _find_bonus_points_nodes(obj: Any, path: str = "") -> list[Any]:
    """Find dicts for daily ad bonus (type=AD, block=daily_ad)."""
    found: list[Any] = []
    if isinstance(obj, dict):
        type_val = str(obj.get("type") or "")
        block = str(obj.get("block") or "")
        title = str(obj.get("title") or "")
        if (
            type_val == "AD"
            or block == "daily_ad"
            or "бонус за рекламу" in title.lower()
        ):
            found.append(obj)
        for k, v in obj.items():
            if obj in found and k in ("button", "secondaryButton"):
                continue
            found.extend(_find_bonus_points_nodes(v, f"{path}.{k}"))
    elif isinstance(obj, list):
        for i, v in enumerate(obj):
            found.extend(_find_bonus_points_nodes(v, f"{path}[{i}]"))
    return found


def _print_bonus_point_node(node: dict, *, dump_json: bool = False) -> None:
    if dump_json:
        print(json.dumps(node, ensure_ascii=False, indent=2)[:2500])
    state = str(node.get("state") or node.get("status") or "")
    kind = node.get("type")
    title = (node.get("title") or "").replace("\n", " ")
    button = node.get("button") if isinstance(node.get("button"), dict) else {}
    progress = button.get("textRight") or button.get("textLeft") or ""
    delay_ms = button.get("delayMillisecondsLeft")
    delay_ts = button.get("delayTimestamp")

    print(f"title: {title}")
    print(f"  type={kind!r}  state={state!r}  block={node.get('block')!r}")
    if progress:
        print(f"  прогресс: {progress}")

    left_sec: float | None = None
    if delay_ms is not None:
        try:
            left_sec = float(delay_ms) / 1000.0
        except (TypeError, ValueError):
            pass
    if left_sec is None and delay_ts:
        _, left_sec = _parse_epoch_or_seconds(delay_ts)

    if state.upper() == "AVAILABLE" or (left_sec is not None and left_sec <= 0):
        print("  → СЕЙЧАС ДОСТУПНО — можно смотреть рекламу")
    elif left_sec is not None:
        when = datetime.now().astimezone() + timedelta(seconds=max(0, left_sec))
        print(f"  → снова доступно через {_format_seconds(left_sec)}")
        print(f"     (около {when.strftime('%Y-%m-%d %H:%M:%S %Z')})")
        if delay_ts:
            print(f"     delayTimestamp: {delay_ts}")
    else:
        print("  → состояние без таймера")


def _item_text_blob(item: dict) -> str:
    parts: list[str] = []
    def walk(o: Any) -> None:
        if isinstance(o, dict):
            for v in o.values():
                walk(v)
        elif isinstance(o, list):
            for v in o:
                walk(v)
        elif isinstance(o, str):
            parts.append(o)
    walk(item)
    return " ".join(parts).lower()


def _is_ad_bonus_item(item: dict) -> bool:
    blob = _item_text_blob(item)
    keys = " ".join(str(k).lower() for k in item.keys())
    markers = (
        "реклам", "advert", "rewarded", "video", "видео", "ежедневн",
        "daily", "ad_promo", "adpromo", "watch",
    )
    return any(m in blob or m in keys for m in markers)


def summarize_ad_bonus(promo: Any, tasks: Any) -> None:
    print("\n=== Ежедневный бонус за рекламу ===")

    print("\n--- GET /api/v2.1/ad/promo/available ---")
    print(json.dumps(promo, ensure_ascii=False, indent=2)[:4000])
    print(
        "\n(Это список рекламных сетей для показа, не таймер. "
        "Таймер 5/5 обычно приходит в tasks.)"
    )

    print("\n--- GET /api/v2.1/tasks/main ---")
    items = _as_list(tasks)
    if not items and isinstance(tasks, dict):
        print("Структура ответа (не список):")
        print(json.dumps(tasks, ensure_ascii=False, indent=2)[:5000])
        items = []
        # also try nested lists
        for k, v in tasks.items():
            if isinstance(v, list):
                print(f"  вложенный список tasks[{k!r}]: {len(v)} шт.")
                items.extend([x for x in v if isinstance(x, dict)])

    print(f"элементов: {len(items)}")
    ad_candidates: list[tuple[int, dict]] = []
    for i, item in enumerate(items):
        if not isinstance(item, dict):
            print(f"  [{i}] {item!r}")
            continue
        title = (
            item.get("title")
            or item.get("name")
            or item.get("header")
            or item.get("subtitle")
            or item.get("type")
            or item.get("taskType")
            or item.get("viewType")
        )
        tid = item.get("id") or item.get("taskId")
        mark = " *" if _is_ad_bonus_item(item) else ""
        print(f"  [{i}] id={tid} title={title!r}{mark}")
        if _is_ad_bonus_item(item):
            ad_candidates.append((i, item))
        for path, val in _dig_timer_fields(item)[:20]:
            kind, sec = _parse_epoch_or_seconds(val)
            extra = ""
            if kind in ("countdown", "epoch") and sec is not None:
                extra = f"  → {_format_seconds(sec)}"
            print(f"       {path}={val!r}{extra}")

    if ad_candidates:
        print("\n--- Кандидаты «бонус за рекламу» (полный JSON) ---")
        best_left: float | None = None
        for i, item in ad_candidates:
            print(f"\n[{i}]")
            print(json.dumps(item, ensure_ascii=False, indent=2)[:3000])
            for path, val in _dig_timer_fields(item):
                kind, sec = _parse_epoch_or_seconds(val)
                if kind in ("countdown", "epoch") and sec is not None:
                    if best_left is None or sec < best_left:
                        best_left = sec
        if best_left is not None:
            when = datetime.now().astimezone() + timedelta(seconds=max(0, best_left))
            print(f"\n→ Следующая доступность примерно через {_format_seconds(best_left)}")
            print(f"  (около {when.strftime('%Y-%m-%d %H:%M:%S %Z')})")
            if best_left <= 0:
                print("→ Сейчас блок, похоже, АКТИВЕН.")
    else:
        print(
            "\nНе нашёл задачу с маркерами рекламы/видео в title. "
            "Смотри полный snapshot — блок может быть с другим type/viewType."
        )


def cmd_check_ad(args: argparse.Namespace) -> int:
    session = load_session_from_state(args.state, args.os, args.store)

    print(f"Using session from {args.state}")
    print(f"Cookies: {list(session.cookies.keys())}")

    promo = request_json(session, "GET", AD_PROMO_AVAILABLE)
    try:
        tasks = request_json(session, "GET", TASKS_MAIN)
    except requests.HTTPError:
        print("tasks/main failed; trying /api/v2.1/tasks …", file=sys.stderr)
        tasks = request_json(session, "GET", TASKS_LIST)

    # Extra sources that may carry daily AD bonus timers
    extras: dict[str, Any] = {}
    for path in (
        "/api/v2.1/tasks",
        "/api/v2.1/bnr/earning",
        "/api/v2.1/features",
    ):
        try:
            extras[path] = request_json(session, "GET", path)
            print(f"\n--- GET {path} ---")
            # Search for bonus-points shaped nodes
            hits = _find_bonus_points_nodes(extras[path])
            if hits:
                print(f"найдено узлов BonusesPoints/AD: {len(hits)}")
                for h in hits:
                    _print_bonus_point_node(h)
            else:
                preview = json.dumps(extras[path], ensure_ascii=False)
                print(preview[:1500] + ("…" if len(preview) > 1500 else ""))
        except requests.HTTPError as exc:
            print(f"{path}: {exc}", file=sys.stderr)

    summarize_ad_bonus(promo, tasks)

    # Enrich: details / rewardSubtasks for tasks that look ad-related or have timers
    items = _as_list(tasks)
    if not items and isinstance(tasks, dict):
        for v in tasks.values():
            if isinstance(v, list):
                items.extend([x for x in v if isinstance(x, dict)])

    details_map: dict[str, Any] = {}
    for item in items:
        if not isinstance(item, dict):
            continue
        tid = item.get("id") or item.get("taskId")
        if tid is None:
            continue
        interesting = _is_ad_bonus_item(item) or any(
            "timer" in str(k).lower()
            or "second" in str(k).lower()
            or "cooldown" in str(k).lower()
            or "video" in str(k).lower()
            for k in item.keys()
        )
        # Always try a few known action-reward style tasks if title matches
        title = str(item.get("title") or item.get("name") or "")
        if "реклам" in title.lower() or "видео" in title.lower():
            interesting = True
        if not interesting:
            continue
        for suffix, label in (
            (f"/api/v2.1/tasks/{tid}/details", "details"),
            (f"/api/v2.1/tasks/{tid}/rewardSubtasksInfo", "rewardSubtasksInfo"),
            (f"/api/v2.1/tasks/{tid}/subtasksInfo", "subtasksInfo"),
        ):
            try:
                data = request_json(session, "GET", suffix)
            except requests.HTTPError as exc:
                print(f"  skip {suffix}: {exc}", file=sys.stderr)
                continue
            key = f"{tid}:{label}"
            details_map[key] = data
            print(f"\n--- task {tid} {label} ---")
            print(json.dumps(data, ensure_ascii=False, indent=2)[:4000])
            for path, val in _dig_timer_fields(data)[:30]:
                kind, sec = _parse_epoch_or_seconds(val)
                extra = ""
                if kind in ("countdown", "epoch") and sec is not None:
                    extra = f"  → {_format_seconds(sec)}"
                print(f"  {path}={val!r}{extra}")

    # Persist last check snapshot
    snap = {
        "checked_at": datetime.now(timezone.utc).isoformat(),
        "ad_promo_available": promo,
        "tasks_main": tasks,
        "task_details": details_map,
        "extras": extras,
    }
    snap_path = args.state.with_name("ad-bonus-last.json")
    save_private(snap_path, snap)
    print(f"\nSnapshot saved to {snap_path}")

    # Final human summary — always last before watch loop
    print("\n" + "=" * 50)
    print("Ежедневный бонус за рекламу")
    print("=" * 50)
    bonus_nodes = [n for n in _find_bonus_points_nodes(tasks) if isinstance(n, dict)]
    if not bonus_nodes:
        print("блок daily_ad не найден в tasks/main")
    else:
        for n in bonus_nodes:
            _print_bonus_point_node(n)
    print("=" * 50)

    if args.watch:
        print("\n--watch: polling every", args.interval, "s (Ctrl+C to stop)")
        while True:
            time.sleep(args.interval)
            try:
                promo = request_json(session, "GET", AD_PROMO_AVAILABLE)
            except requests.RequestException as exc:
                print(f"poll error: {exc}", file=sys.stderr)
                continue
            try:
                tasks = request_json(session, "GET", TASKS_MAIN)
            except requests.RequestException as exc:
                print(f"[{datetime.now().strftime('%H:%M:%S')}] tasks error: {exc}")
                continue
            nodes = [n for n in _find_bonus_points_nodes(tasks) if isinstance(n, dict)]
            ts = datetime.now().strftime("%H:%M:%S")
            if not nodes:
                print(f"[{ts}] daily_ad блок не найден в tasks/main")
                continue
            node = nodes[0]
            state = str(node.get("state") or "")
            button = node.get("button") if isinstance(node.get("button"), dict) else {}
            delay_ms = button.get("delayMillisecondsLeft")
            left_sec = None
            if delay_ms is not None:
                try:
                    left_sec = float(delay_ms) / 1000.0
                except (TypeError, ValueError):
                    pass
            if state.upper() == "AVAILABLE" or (left_sec is not None and left_sec <= 0):
                print(f"[{ts}] ДОСТУПНО — state={state} progress={button.get('textRight')}")
                print(json.dumps(node, ensure_ascii=False, indent=2))
                if not args.keep_watching:
                    break
            else:
                left = _format_seconds(left_sec) if left_sec is not None else "?"
                print(
                    f"[{ts}] state={state} progress={button.get('textRight')} "
                    f"осталось ~{left}"
                )

    return 0


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main() -> int:
    parser = argparse.ArgumentParser(
        description="CheckScan: login and daily ad-bonus checker"
    )
    parser.add_argument(
        "--state",
        type=Path,
        default=DEFAULT_STATE,
        help=f"session JSON (default: {DEFAULT_STATE})",
    )
    parser.add_argument("--os", default="ANDROID", help="Os header")
    parser.add_argument("--store", default="GP", help="store header: GP/RU/XI/HU/android")

    sub = parser.add_subparsers(dest="command")

    p_login = sub.add_parser("login", help="Phone/email OTP login, save session")
    p_login.add_argument("--phone", help="Phone +country…")
    p_login.add_argument(
        "--confirm-type",
        default="SMS",
        choices=VALID_CONFIRM_TYPES,
    )
    p_login.add_argument("--destination-type", choices=VALID_DESTINATION_TYPES)
    p_login.add_argument("--code", help="OTP code")

    p_ad = sub.add_parser(
        "check-ad",
        help="Check «Ежедневный бонус за рекламу» status (uses saved session)",
    )
    p_ad.add_argument(
        "--watch",
        action="store_true",
        help="Poll until the bonus becomes available",
    )
    p_ad.add_argument(
        "--interval",
        type=int,
        default=60,
        help="Poll interval seconds (default 60)",
    )
    p_ad.add_argument(
        "--keep-watching",
        action="store_true",
        help="With --watch, do not exit when available",
    )

    # Backward compatible: no subcommand → login (old CLI)
    args, unknown = parser.parse_known_args()
    if args.command is None:
        # Re-parse as login with legacy flat flags
        legacy = argparse.ArgumentParser(parents=[parser], add_help=False)
        legacy.add_argument("--phone")
        legacy.add_argument("--confirm-type", default="SMS", choices=VALID_CONFIRM_TYPES)
        legacy.add_argument("--destination-type", choices=VALID_DESTINATION_TYPES)
        legacy.add_argument("--code")
        # If user passed only global flags / nothing that looks like check-ad
        if any(a in ("check-ad", "login") for a in sys.argv[1:]):
            parser.print_help()
            return 2
        args = legacy.parse_args()
        args.command = "login"

    if args.command == "login":
        return cmd_login(args)
    if args.command == "check-ad":
        return cmd_check_ad(args)
    parser.print_help()
    return 2


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except requests.RequestException as exc:
        print(f"Network/API error: {exc}", file=sys.stderr)
        raise SystemExit(1)
    except KeyboardInterrupt:
        print("\nInterrupted.", file=sys.stderr)
        raise SystemExit(130)
