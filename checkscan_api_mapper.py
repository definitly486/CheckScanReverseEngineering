#!/usr/bin/env python3
"""Static endpoint/API mapper for an existing JADX or apktool source tree.
Does not launch JADX, install the app, or make requests to the app's API.
"""
import argparse, json, re
from pathlib import Path

REPO_URL = "https://github.com/definitly486/CheckScanReverseEngineering"
EXTS = {".java", ".kt", ".smali", ".xml", ".json", ".txt"}
FOCUS = ("com/warefly/checkscan/auth/data", "com/warefly/checkscan/data", "defpackage")
HTTP = re.compile(r"@(GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS|HTTP)\s*\(?\s*[\"']?([^\"'\s)]*)")
PARAM = re.compile(r"@(Path|Query|Header|Field|Part|Body|Url)\s*(?:\(\s*[\"']([^\"']+)[\"']\s*\))?")
KEYS = {
 "auth": r"auth|login|sign.?in|token|credential|session|refresh",
 "sms": r"sms|otp|phone|verification|confirm",
 "sse": r"sse|event/subscribe|EventSource|text/event-stream",
 "interceptor": r"Interceptor|intercept\(|addInterceptor|Authorization|Bearer|Cookie",
 "network": r"Retrofit|retrofit2|OkHttp|okhttp3|baseUrl|Request\.Builder",
 "dto": r"SerializedName|JsonProperty|data class .*?(Dto|Request|Response)|class .*?(Dto|Request|Response)",
}
URL = re.compile(r"""["']((?:https?://|/v[0-9]+/|/api/)[^"'\\s<>]{1,250})["']""")

def purpose(s):
    s=s.lower()
    if re.search(r"sms|otp|phone|verification",s): return "SMS / код подтверждения"
    if re.search(r"auth|login|sign.?in|token",s): return "Авторизация / токен"
    if re.search(r"confirm|verify|validate",s): return "Подтверждение входа"
    if re.search(r"sse|event|subscribe",s): return "Серверные события (SSE)"
    return "Не определено: проверить call-site"

def main():
    p=argparse.ArgumentParser()
    p.add_argument("source", nargs="?", default=".", help="папка с уже декомпилированными исходниками")
    p.add_argument("--md", default="checkscan_api_report.md")
    p.add_argument("--json", default="checkscan_api_report.json")
    a=p.parse_args()
    root=Path(a.source).expanduser().resolve()
    if not root.is_dir():
        raise SystemExit(f"Каталог не найден: {root}. Склонируйте {REPO_URL}")
    files=[f for f in root.rglob("*") if f.is_file() and f.suffix.lower() in EXTS
           and not set(f.parts)&{".git","build",".gradle","node_modules"}]
    endpoints, evidence=[],[]
    for f in files:
        rel=f.relative_to(root).as_posix()
        try: lines=f.read_text(encoding="utf-8",errors="replace").splitlines()
        except OSError: continue
        focused=any(x in rel for x in FOCUS) or f.name in ("CheckScanApplication.java","CheckScanApplication.kt")
        for n,line in enumerate(lines,1):
            categories=[k for k,rx in KEYS.items() if re.search(rx,line,re.I)]
            if (focused and categories) or re.search(r"@(?:GET|POST|PUT|PATCH|DELETE|HTTP)|event/subscribe|text/event-stream",line,re.I):
                evidence.append({"category":",".join(categories) or "Retrofit/endpoint","file":rel,"line":n,"snippet":line.strip()[:400]})
            m=HTTP.search(line)
            if m:
                verb,route=m.group(1),m.group(2)
                block=" ".join(x.strip() for x in lines[n-1:min(n+7,len(lines))] if x.strip())[:900]
                if verb=="HTTP":
                    custom=re.search(r"method\s*=\s*[\"'](\w+)",block)
                    verb=custom.group(1) if custom else "HTTP"
                params=list(dict.fromkeys("@"+x.group(1)+(f"({x.group(2)})" if x.group(2) else "") for x in PARAM.finditer(block)))
                endpoints.append({"method":verb,"endpoint":route or "(route отсутствует в аннотации)","purpose":purpose(route+" "+block),
                    "parameters":", ".join(params) or "проверить сигнатуру/DTO","file":rel,"line":n,"evidence":block})
            for m in URL.finditer(line):
                route=m.group(1)
                if any(k in route.lower() for k in ("/api/","/v1/","/auth","/sms","/sse","/login")):
                    endpoints.append({"method":"не установлен","endpoint":route,"purpose":purpose(route+" "+line),
                        "parameters":"литерал; уточнить по вызову","file":rel,"line":n,"evidence":line.strip()[:400]})
    unique={}
    for e in endpoints: unique[(e["method"],e["endpoint"],e["file"],e["line"])]=e
    endpoints=list(unique.values())
    report={"repository":REPO_URL,"source":str(root),"files_scanned":len(files),"endpoints":endpoints,"evidence":evidence}
    Path(a.json).write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    def esc(s): return str(s).replace("|","\\|").replace("`","'")
    out=["# CheckScan — статическая карта API","",f"Репозиторий: {REPO_URL}",f"Просмотрено файлов: {len(files)}",
         "","> Автоматические кандидаты. Endpoint и назначение считаются подтверждёнными только после трассировки вызывающего кода.","",
         "## Endpoint-кандидаты","","| Метод | Endpoint | Назначение | Параметры | Файл:строка |","|---|---|---|---|---|"]
    for e in endpoints:
        out.append("| "+" | ".join(esc(e[k]) for k in ("method","endpoint","purpose","parameters"))+f" | `{esc(e['file'])}:{e['line']}` |")
    out += ["","## Фокусные совпадения","","| Категория | Файл:строка | Код |","|---|---|---|"]
    for e in evidence: out.append(f"| {esc(e['category'])} | `{esc(e['file'])}:{e['line']}` | `{esc(e['snippet'])}` |")
    out += ["","## Как довести таблицу до подтверждённой","",
       "- Авторизация: UI/ViewModel → auth repository/use case → Retrofit/OkHttp.",
       "- SMS: проверить метод, DTO тела и сериализованные JSON-имена.",
       "- Подтверждение: проследить второй запрос после ввода кода и сохранение токена.",
       "- SSE: выяснить query/header, формат event/data и reconnect.",
       "- Интерцепторы: установить реальные источники заголовков и токенов.",
       "- DTO: сопоставить поля request/response с местами их использования."]
    Path(a.md).write_text("\n".join(out)+"\n",encoding="utf-8")
    print(f"Отчёты: {a.md}, {a.json}; endpoint-кандидатов: {len(endpoints)}")
if __name__=="__main__": main()
