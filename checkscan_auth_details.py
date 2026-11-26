#!/usr/bin/env python3
"""
Собирает узкие фрагменты JADX для дальнейшего разбора авторизации CheckScan.

Запуск из корня CheckScanReverseEngineering:
    python3 checkscan_auth_details.py
Результат:
    reports/auth_details.md
"""
from __future__ import annotations

import argparse
import re
from pathlib import Path

SOURCE_CANDIDATES = (
    "apk_analysis/jadx/sources",
    "apk_analysis/jadx",
    "apk_analysis/apktool",
    "jadx/sources",
    "sources",
)

TARGET_FILES = {
    "on.java": "HTTP client builder / interceptor configuration",
    "wc5.java": "Retrofit factory / authorized client",
    "cv.java": "API routes and request signatures",
    "ex7.java": "sign-in request DTO",
    "xm1.java": "confirmation request DTO",
}

KEYWORDS = re.compile(
    r"interceptor|Interceptor|addHeader|header\(|headers\(|cookie|Cookie|"
    r"token|Token|auth|Auth|Authorization|Bearer|server_host|signin/v2|"
    r"signin/confirm/v2|refresh|device|user-agent",
    re.IGNORECASE,
)

def find_source_root(repo: Path) -> Path | None:
    for relative in SOURCE_CANDIDATES:
        candidate = repo / relative
        if candidate.is_dir():
            # Prefer the directory that actually contains the decompiled package.
            if any(candidate.rglob("on.java")) or any(candidate.rglob("cv.java")):
                return candidate
    return None

def locate_file(root: Path, filename: str) -> Path | None:
    hits = list(root.rglob(filename))
    if not hits:
        return None
    # Prefer defpackage files if JADX obfuscated package is present.
    hits.sort(key=lambda p: (0 if "defpackage" in p.parts else 1, len(p.parts)))
    return hits[0]

def extract_braced_block(lines: list[str], start: int) -> tuple[int, str]:
    """Return end line and block beginning at start; brace-count while ignoring strings/comments approximately."""
    text = "\n".join(lines[start:])
    opening = text.find("{")
    if opening < 0:
        return min(start + 35, len(lines)), "\n".join(lines[start:min(start + 35, len(lines))])

    depth = 0
    in_string = None
    escaped = False
    line_comment = False
    block_comment = False
    for pos, char in enumerate(text[opening:], opening):
        nxt = text[pos + 1] if pos + 1 < len(text) else ""
        if line_comment:
            if char == "\n":
                line_comment = False
            continue
        if block_comment:
            if char == "*" and nxt == "/":
                block_comment = False
            continue
        if in_string:
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == in_string:
                in_string = None
            continue
        if char == "/" and nxt == "/":
            line_comment = True
            continue
        if char == "/" and nxt == "*":
            block_comment = True
            continue
        if char in ("'", '"'):
            in_string = char
            continue
        if char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                block = text[:pos + 1]
                end_line = start + block.count("\n")
                return end_line, block
    end = min(start + 100, len(lines))
    return end, "\n".join(lines[start:end])

def method_sections(path: Path, patterns: list[str]) -> list[tuple[int, int, str]]:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    found = []
    for i, line in enumerate(lines):
        if any(re.search(p, line, re.IGNORECASE) for p in patterns):
            # Capture full method/class-like block where braces are present.
            end, block = extract_braced_block(lines, i)
            found.append((i + 1, end, block))
    # Deduplicate overlapping or repeated sections.
    unique = []
    seen = set()
    for item in found:
        key = item[2][:250]
        if key not in seen:
            seen.add(key)
            unique.append(item)
    return unique

def main() -> int:
    parser = argparse.ArgumentParser(description="Сбор точных фрагментов JADX для анализа CheckScan auth.")
    parser.add_argument("--root", type=Path, default=Path.cwd(), help="Корень репозитория")
    parser.add_argument("--out", type=Path, default=Path("reports/auth_details.md"), help="Файл отчёта")
    args = parser.parse_args()

    repo = args.root.resolve()
    source_root = find_source_root(repo)
    if source_root is None:
        print("Не найден каталог JADX. Запусти скрипт из корня репозитория или укажи --root.")
        print("Проверены: " + ", ".join(SOURCE_CANDIDATES))
        return 2

    output = [
        "# CheckScan — точечные фрагменты авторизации",
        "",
        f"- Корень репозитория: `{repo}`",
        f"- Источник JADX: `{source_root}`",
        "",
        "> Отчёт содержит код из локальной декомпиляции. Секреты и реальные токены специально не ищутся/не выводятся.",
        "",
    ]

    requested = {
        "on.java": [
            r"OkHttpClient\\.a\s+c\s*\(",
            r"\bc\s*\(boolean",
            r"Interceptor",
            r"addInterceptor",
            r"addNetworkInterceptor",
            r"Authorization",
        ],
        "wc5.java": [
            r"authorized retrofit created",
            r"server_host",
            r"plain retrofit created",
        ],
        "cv.java": [
            r"signin/v2",
            r"signin/confirm/v2",
        ],
        "ex7.java": [r"class\s+ex7", r"phone", r"confirmType"],
        "xm1.java": [r"class\s+xm1", r"destinationType", r"code"],
    }

    for filename, description in TARGET_FILES.items():
        path = locate_file(source_root, filename)
        output.extend([f"## {filename} — {description}", ""])
        if path is None:
            output.extend([f"Файл не найден под `{source_root}`.", ""])
            continue
        output.extend([f"Путь: `{path.relative_to(repo) if path.is_relative_to(repo) else path}`", ""])
        lines = path.read_text(encoding="utf-8", errors="replace").splitlines()

        if filename in ("on.java", "wc5.java"):
            sections = method_sections(path, requested[filename])
            if not sections:
                # fallback: relevant lines with modest context
                for i, line in enumerate(lines):
                    if KEYWORDS.search(line):
                        lo, hi = max(0, i - 5), min(len(lines), i + 10)
                        output.extend(["```java", f"// строки {lo+1}-{hi}", *lines[lo:hi], "```", ""])
            else:
                for start, end, block in sections:
                    output.extend([f"### Фрагмент, строки {start}–{end}", "```java", block, "```", ""])
        else:
            # Small API/DTO files: preserve the complete file for signatures and fields.
            output.extend(["```java", *lines[:500], "```", ""])

    args.out.parent.mkdir(parents=True, exist_ok=True)
    out_path = args.out if args.out.is_absolute() else repo / args.out
    out_path.write_text("\n".join(output), encoding="utf-8")
    print(f"Отчёт записан: {out_path}")
    print("Прикрепи этот Markdown сюда — по нему уточним checkscan_login.py.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
