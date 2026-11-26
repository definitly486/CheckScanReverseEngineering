#!/usr/bin/env python3
"""Generic static API mapper for JADX/APKTool output.

No app installation, login, or API requests are performed.
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

EXTS = {".java", ".kt", ".smali", ".xml", ".json", ".txt"}
SKIP = {".git", ".gradle", ".venv", "venv", "build", "node_modules", "__pycache__"}
HTTP = re.compile(r'@(GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS|HTTP)\s*\(?\s*["\']?([^"\'\s)]*)', re.I)
PARAM = re.compile(r'@(Path|Query|Header|Field|Part|Body|Url)\s*(?:\(\s*["\']([^"\']+)["\']\s*\))?', re.I)
URL = re.compile(r"""["']((?:https?://|/api/|/v[0-9]+/)[^"'\s<>]{1,250})["']""")
SIGNALS = {
    "auth": re.compile(r"auth|login|sign.?in|token|credential|session|refresh", re.I),
    "sms_otp": re.compile(r"sms|otp|phone|verification|confirm|challenge", re.I),
    "interceptor": re.compile(r"Interceptor|intercept\(|addInterceptor|Authorization|Bearer|Cookie", re.I),
    "network_client": re.compile(r"Retrofit|retrofit2|OkHttp|okhttp3|Ktor|ktor\.client|Volley|HttpURLConnection|baseUrl|Request\.Builder", re.I),
    "serialization": re.compile(r"SerializedName|JsonProperty|JsonAdapter|Gson|Moshi|kotlinx\.serialization|fromJson|toJson", re.I),
    "graphql": re.compile(r"graphql|GraphQL|ApolloClient", re.I),
    "grpc": re.compile(r"grpc|ManagedChannel|MethodDescriptor", re.I),
    "websocket_sse": re.compile(r"WebSocket|websocket|EventSource|text/event-stream|event/subscribe", re.I),
}

def classify(text: str) -> list[str]:
    return [name for name, pattern in SIGNALS.items() if pattern.search(text)]

def purpose(text: str) -> str:
    tags = set(classify(text))
    if "sms_otp" in tags: return "SMS / OTP / подтверждение"
    if "auth" in tags: return "Авторизация / сессия"
    if "graphql" in tags: return "GraphQL"
    if "grpc" in tags: return "gRPC"
    if "websocket_sse" in tags: return "WebSocket / SSE"
    return "Проверить call-site"

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path, help="Каталог JADX/APKTool или декомпилированных исходников")
    parser.add_argument("--app-name", default=None, help="Название приложения для заголовка отчёта")
    parser.add_argument("--md", type=Path, default=Path("api_report.md"))
    parser.add_argument("--json", type=Path, default=Path("api_report.json"))
    parser.add_argument("--max-file-size", type=int, default=2_000_000,
                        help="Пропускать файлы больше указанного размера (по умолчанию 2 МБ)")
    args = parser.parse_args()
    root = args.source.expanduser().resolve()
    if not root.is_dir():
        parser.error(f"Каталог не найден: {root}")

    files = [p for p in root.rglob("*") if p.is_file()
             and p.suffix.lower() in EXTS
             and p.stat().st_size <= args.max_file_size
             and not (set(p.parts) & SKIP)]
    endpoints, evidence = [], []
    for path in files:
        try:
            lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
        except OSError:
            continue
        rel = path.relative_to(root).as_posix()
        for index, line in enumerate(lines):
            tags = classify(line)
            if tags:
                evidence.append({"categories": tags, "file": rel, "line": index + 1,
                                 "snippet": line.strip()[:500]})
            match = HTTP.search(line)
            if match:
                verb, route = match.group(1).upper(), match.group(2)
                block = " ".join(x.strip() for x in lines[index:min(index + 10, len(lines))] if x.strip())[:1200]
                if verb == "HTTP":
                    custom = re.search(r'method\s*=\s*["\'](\w+)', block, re.I)
                    verb = custom.group(1).upper() if custom else "HTTP"
                params = list(dict.fromkeys("@" + x.group(1) + (f"({x.group(2)})" if x.group(2) else "")
                                            for x in PARAM.finditer(block)))
                endpoints.append({"method": verb, "endpoint": route or "(route в аннотации не указан)",
                                  "purpose": purpose(route + " " + block),
                                  "parameters": ", ".join(params), "file": rel,
                                  "line": index + 1, "evidence": block})
            for match in URL.finditer(line):
                route = match.group(1)
                endpoints.append({"method": "не установлен", "endpoint": route,
                                  "purpose": purpose(route + " " + line),
                                  "parameters": "литерал; проверить место использования",
                                  "file": rel, "line": index + 1, "evidence": line.strip()[:500]})

    unique = {}
    for item in endpoints:
        unique[(item["method"], item["endpoint"], item["file"], item["line"])] = item
    endpoints = list(unique.values())
    app = args.app_name or root.name
    report = {"application": app, "source": str(root), "files_scanned": len(files),
              "endpoint_candidates": endpoints, "evidence": evidence,
              "limitations": [
                  "Это статические кандидаты, а не подтверждение фактического сетевого вызова.",
                  "Проверяйте call-site, реализацию клиента, сериализацию и обработку ответа.",
                  "Не сохраняйте реальные пароли, OTP, access/refresh tokens или cookies в отчётах."
              ]}
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")

    def esc(value): return str(value).replace("|", "\\|").replace("`", "'").replace("\n", " ")
    out = [f"# API map — {app}", "", f"- Source: `{root}`",
           f"- Files scanned: **{len(files)}**",
           f"- Endpoint candidates: **{len(endpoints)}**", "",
           "> Результаты являются кандидатами. Подтверждайте маршруты по вызывающему коду и runtime-трассировке.", "",
           "## Endpoint candidates", "",
           "| Method | Route | Purpose | Parameters | File:line |",
           "|---|---|---|---|---|"]
    for item in endpoints:
        out.append("| " + " | ".join(esc(item[key]) for key in
                    ("method", "endpoint", "purpose", "parameters")) +
                    f" | `{esc(item['file'])}:{item['line']}` |")
    out += ["", "## Network/auth evidence", "",
            "| Categories | File:line | Snippet |", "|---|---|---|"]
    for item in evidence:
        out.append(f"| {', '.join(item['categories'])} | `{esc(item['file'])}:{item['line']}` | `{esc(item['snippet'])}` |")
    args.md.write_text("\n".join(out) + "\n", encoding="utf-8")
    print(f"Files scanned: {len(files)}; endpoint candidates: {len(endpoints)}")
    print(f"Markdown: {args.md.resolve()}")
    print(f"JSON: {args.json.resolve()}")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
