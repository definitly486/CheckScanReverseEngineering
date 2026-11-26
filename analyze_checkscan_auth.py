#!/usr/bin/env python3
"""
CheckScan auth/token flow analyzer designed to be launched from repository root.

Default:
    python3 analyze_checkscan_auth.py

It scans repository's existing decompilation:
    apk_analysis/jadx/
    apk_analysis/apktool/

Output:
    reports/auth_network/auth_network_findings.json
    reports/auth_network/auth_network_findings.md

Optional APK decompilation:
    python3 analyze_checkscan_auth.py --apk ./checkscan.apk
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent
DEFAULT_SOURCE_DIRS = (
    REPO_ROOT / "apk_analysis" / "jadx",
    REPO_ROOT / "apk_analysis" / "apktool",
)
DEFAULT_OUT = REPO_ROOT / "reports" / "auth_network"

# Grouped by the actual flow to make findings useful for tracing.
RULES = {
    "confirm_api_and_response": re.compile(
        r"signin.{0,35}confirm.{0,25}v2|confirm.{0,35}signin.{0,25}v2|"
        r"signInConfirm|signinConfirm|signin/confirm/v2", re.I
    ),
    "response_json_and_models": re.compile(
        r"@SerializedName|SerializedName|JsonProperty|JsonAdapter|"
        r"JSONObject|JsonObject|JsonElement|Gson|Moshi|"
        r"kotlinx\.serialization|fromJson|decodeFromString|"
        r"responseBody|Response<|data class .*Response|class .*Response", re.I
    ),
    "token_fields": re.compile(
        r"access.?token|refresh.?token|auth.?token|id.?token|"
        r"token.?type|jwt|bearer", re.I
    ),
    "token_storage": re.compile(
        r"SharedPreferences|EncryptedSharedPreferences|"
        r"PreferenceDataStore|DataStore|preferencesDataStore|"
        r"getSharedPreferences|putString|getString|"
        r"AndroidKeyStore|KeyStore|EncryptedFile|"
        r"TokenManager|TokenStorage|saveToken|storeToken|persistToken", re.I
    ),
    "authorization_in_requests": re.compile(
        r"Authorization|Bearer|addHeader|header\(|Interceptor|"
        r"OkHttpClient|Authenticator|CookieJar|Request\.Builder|"
        r"@Header|@Headers", re.I
    ),
    "refresh_and_session_restore": re.compile(
        r"refresh.?token|token.?refresh|renewToken|refreshToken|"
        r"restoreSession|loadToken|isLoggedIn|session|currentUser", re.I
    ),
    "signin_endpoint": re.compile(
        r"signin/v2|signin.{0,15}/v2|signIn|signin", re.I
    ),
}

FOCUS = re.compile(
    r"signin|sign.?in|login|confirm|auth|token|session|"
    r"credential|interceptor|preferences|datastore|keystore|"
    r"refresh|user.?response", re.I
)
EXTENSIONS = {".java", ".kt", ".smali", ".xml", ".json", ".txt"}
IGNORE_PARTS = {".git", ".venv", "venv", "build", "node_modules"}

def source_roots():
    return [p for p in DEFAULT_SOURCE_DIRS if p.is_dir()]

def walk_files(roots):
    for root in roots:
        for path in root.rglob("*"):
            if not path.is_file() or path.suffix.lower() not in EXTENSIONS:
                continue
            if any(part in IGNORE_PARTS for part in path.parts):
                continue
            yield root, path

def scan(roots, max_hits):
    hits = {key: [] for key in RULES}
    files_scanned = 0
    for root, path in walk_files(roots):
        files_scanned += 1
        try:
            lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
        except OSError:
            continue
        rel = path.relative_to(REPO_ROOT).as_posix()
        for line_no, line in enumerate(lines, 1):
            # Skip uninformative giant minified lines, retaining a bounded excerpt.
            excerpt = line.strip()
            if len(excerpt) > 900:
                excerpt = excerpt[:900] + " ... [truncated]"
            for key, pattern in RULES.items():
                if len(hits[key]) < max_hits and pattern.search(line):
                    hits[key].append({
                        "path": rel,
                        "line": line_no,
                        "text": excerpt,
                    })
    return files_scanned, hits

def decompile_apk(apk, out_dir, jadx):
    executable = shutil.which(jadx) or (jadx if Path(jadx).is_file() else None)
    if not executable:
        raise SystemExit(
            "JADX не найден. Установи jadx или передай --jadx /путь/к/jadx."
        )
    destination = out_dir / "jadx_from_apk"
    command = [str(executable), "-d", str(destination), "--show-bad-code", str(apk)]
    print("JADX:", " ".join(command))
    proc = subprocess.run(command, text=True, stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT)
    (out_dir / "jadx.log").write_text(proc.stdout, encoding="utf-8")
    if proc.returncode and not destination.exists():
        print(proc.stdout[-2500:], file=sys.stderr)
        raise SystemExit(proc.returncode)
    return destination

def main():
    global REPO_ROOT
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=REPO_ROOT,
                        help="Корень репозитория (по умолчанию определяется по скрипту)")
    parser.add_argument("--apk", type=Path,
                        help="APK для декомпиляции; необязательно, если исходники уже лежат в apk_analysis/")
    parser.add_argument("--jadx", default="jadx", help="Команда или путь к JADX")
    parser.add_argument("--out", type=Path, default=None,
                        help="Каталог отчёта (по умолчанию reports/auth_network в корне)")
    parser.add_argument("--max-hits", type=int, default=500,
                        help="Максимум совпадений на группу")
    args = parser.parse_args()

    repo = args.root.expanduser().resolve()
    out = (args.out.expanduser().resolve() if args.out else
           repo / "reports" / "auth_network")
    out.mkdir(parents=True, exist_ok=True)

    roots = [p for p in (
        repo / "apk_analysis" / "jadx",
        repo / "apk_analysis" / "apktool",
    ) if p.is_dir()]

    if args.apk:
        apk = args.apk.expanduser().resolve()
        if not apk.is_file():
            parser.error(f"APK не найден: {apk}")
        roots.append(decompile_apk(apk, out, args.jadx))

    if not roots:
        parser.error(
            f"Не найдены папки apk_analysis/jadx или apk_analysis/apktool в {repo}. "
            "Проверь, что репозиторий и декомпиляция находятся на месте, "
            "либо запусти с --apk /path/to/checkscan.apk."
        )

    # Make paths relative to the selected repository root for portability.
    REPO_ROOT = repo
    scanned, findings = scan(roots, max(1, args.max_hits))
    total = sum(len(v) for v in findings.values())

    report = {
        "repository_root": str(repo),
        "source_roots": [str(p) for p in roots],
        "files_scanned": scanned,
        "endpoint_context": {
            "signin_confirm": "api/v2.1/users/signin/confirm/v2",
            "signin_start": "api/v2.1/users/signin/v2",
            "known_host_from_project_report": "https://api.checkscan.org",
        },
        "findings": findings,
        "next_trace": [
            "Найти реализацию confirm API и её тип ответа.",
            "Проследить точные JSON-ключи через DTO/аннотации/адаптер.",
            "Проследить поле токена до места записи в preferences/keystore.",
            "Найти чтение сохранённого значения при старте приложения.",
            "Найти interceptor или место формирования Authorization/Cookie.",
            "Отдельно подтвердить refresh endpoint, тело, ответ и срок действия.",
        ],
        "caution": (
            "Regex-совпадения — подсказки статического анализа, а не доказательство. "
            "Не публикуй в репозитории реальные SMS-коды, токены, cookies или ответы аккаунта."
        ),
    }
    json_file = out / "auth_network_findings.json"
    json_file.write_text(json.dumps(report, ensure_ascii=False, indent=2),
                         encoding="utf-8")

    md = [
        "# CheckScan — auth / token flow",
        "",
        f"- Репозиторий: `{repo}`",
        f"- Просмотрено файлов: **{scanned}**",
        f"- Найдено строк-кандидатов: **{total}**",
        f"- Источники: {', '.join('`'+str(p.relative_to(repo))+'`' for p in roots)}",
        "",
        "## Подтверждённый контекст из проекта",
        "- Sign-in start: `api/v2.1/users/signin/v2`",
        "- Sign-in confirm: `api/v2.1/users/signin/confirm/v2`",
        "- API host: `https://api.checkscan.org`",
        "",
        "## Найденные совпадения",
        "",
    ]
    for category, entries in findings.items():
        md += [f"### {category.replace('_', ' ').title()} — {len(entries)}", ""]
        if not entries:
            md += ["_Совпадений нет._", ""]
            continue
        for item in entries:
            md.append(f"- `{item['path']}:{item['line']}`")
            md.append(f"  `{item['text']}`")
        md.append("")
    md += [
        "## Как восстановить жизненный цикл токена",
        "",
        "1. Confirm API → response DTO / JSON adapter.",
        "2. DTO → exact token field (do not guess key names).",
        "3. Token field → persistence (preferences / encrypted preferences / keystore).",
        "4. Persistence → session restore on app launch.",
        "5. Stored token → request interceptor / Authorization or cookie.",
        "6. Refresh flow → request, response, expiration and retry behavior.",
        "",
        "> Статический поиск не подтверждает поведение во время выполнения. "
        "Проверяй переходы по call-site и типам.",
    ]
    md_file = out / "auth_network_findings.md"
    md_file.write_text("\n".join(md), encoding="utf-8")
    print(f"\nАнализ завершён. Файлов: {scanned}; совпадений: {total}")
    print(f"Markdown: {md_file}")
    print(f"JSON:     {json_file}")

if __name__ == "__main__":
    main()
