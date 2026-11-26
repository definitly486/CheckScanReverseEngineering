#!/usr/bin/env python3
"""
Extract CheckScan auth/network classes and server_host resource from local JADX/apktool output.

Run from repository root:
    python3 checkscan_auth_sources.py
Or:
    python3 checkscan_auth_sources.py --root /path/to/CheckScanReverseEngineering
"""
from __future__ import annotations

import argparse
import os
from pathlib import Path
import re
from datetime import datetime

CLASS_NAMES = {"bz3", "ev3", "a59", "qx", "dx7"}
SOURCE_DIR_HINTS = (
    "apk_analysis/jadx/sources",
    "apk_analysis/jadx",
    "apk_analysis/apktool",
    "jadx/sources",
    "sources",
)
RESOURCE_HINTS = (
    "apk_analysis/apktool/res",
    "apk_analysis/jadx/resources",
    "apk_analysis/jadx/res",
    "res",
)
SKIP_DIRS = {".git", ".gradle", ".venv", "venv", "node_modules", "__pycache__"}

def iter_files(base: Path, suffixes: set[str]):
    if not base.exists():
        return
    for root, dirs, files in os.walk(base):
        dirs[:] = [d for d in dirs if d not in SKIP_DIRS]
        for name in files:
            if Path(name).suffix.lower() in suffixes:
                yield Path(root) / name

def find_source_roots(root: Path):
    roots = []
    for hint in SOURCE_DIR_HINTS:
        candidate = root / hint
        if candidate.exists() and candidate.is_dir() and candidate not in roots:
            roots.append(candidate)
    # Fallback: any common JADX source tree.
    if not roots:
        for p in root.rglob("sources"):
            if p.is_dir() and "jadx" in str(p).lower():
                roots.append(p)
    return roots

def class_blocks(text: str, class_name: str):
    # Return full file as a dependable fallback; source may have nested/obfuscated
    # declarations and brace parsing can be unreliable with strings/comments.
    patterns = [
        rf'\bclass\s+{re.escape(class_name)}\b',
        rf'\binterface\s+{re.escape(class_name)}\b',
        rf'\benum\s+{re.escape(class_name)}\b',
    ]
    return any(re.search(p, text) for p in patterns)

def safe_read(path: Path):
    try:
        return path.read_text(encoding="utf-8", errors="replace")
    except OSError as e:
        return f"[READ ERROR: {e}]"

def main():
    ap = argparse.ArgumentParser(description="Extract CheckScan auth classes and server_host resource.")
    ap.add_argument("--root", default=".", help="repository root (default: current directory)")
    ap.add_argument("--out", default="reports/auth_sources.md", help="output report path")
    args = ap.parse_args()
    root = Path(args.root).expanduser().resolve()
    out = (root / args.out).resolve() if not Path(args.out).is_absolute() else Path(args.out).resolve()

    if not root.is_dir():
        ap.error(f"repository root is not a directory: {root}")

    source_roots = find_source_roots(root)
    found_classes: dict[str, list[Path]] = {n: [] for n in CLASS_NAMES}
    resource_hits: list[tuple[Path, str]] = []
    source_files_seen = 0

    for src_root in source_roots:
        for f in iter_files(src_root, {".java", ".kt"}):
            source_files_seen += 1
            if f.stem in CLASS_NAMES:
                found_classes[f.stem].append(f)
            # Locate any source-level mention of the Android resource symbol.
            content = safe_read(f)
            if "server_host" in content and f.stem not in CLASS_NAMES:
                lines = content.splitlines()
                for i, line in enumerate(lines):
                    if "server_host" in line:
                        resource_hits.append((f, "\n".join(
                            f"{j+1}: {lines[j]}" for j in range(max(0, i-4), min(len(lines), i+5))
                        )))

    resource_roots = [root / h for h in RESOURCE_HINTS if (root / h).exists()]
    # Search all res/values* XML in known apktool/JADX output for exact string name.
    for res_root in resource_roots:
        for f in iter_files(res_root, {".xml"}):
            if "values" not in f.parts[-2].lower() and "values" not in str(f.parent).lower():
                continue
            content = safe_read(f)
            if re.search(r"""<string\b[^>]*\bname=[\"']server_host[\"']""", content):
                resource_hits.append((f, content))

    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as report:
        report.write("# CheckScan — исходники авторизации и server_host\n\n")
        report.write(f"- Репозиторий: `{root}`\n")
        report.write(f"- Найденные source roots: {', '.join(f'`{x}`' for x in source_roots) or 'не найдены'}\n")
        report.write(f"- Java/Kotlin файлов проверено: {source_files_seen}\n")
        report.write(f"- Дата создания: {datetime.now().astimezone().isoformat(timespec='seconds')}\n\n")
        report.write("> Скрипт не выводит значения токенов, паролей или cookies. Полные исходники указанных классов выводятся, поскольку они нужны для анализа структуры запросов.\n\n")

        report.write("## Классы\n\n")
        for name in sorted(CLASS_NAMES):
            paths = found_classes[name]
            report.write(f"### `{name}` — {'найден' if paths else 'НЕ НАЙДЕН'}\n\n")
            if not paths:
                report.write("Файл с таким basename не обнаружен в найденных JADX source roots. Возможно, исходник находится в другом каталоге или имя класса декомпилировано иначе.\n\n")
                continue
            for f in paths:
                report.write(f"#### Путь: `{f.relative_to(root) if f.is_relative_to(root) else f}`\n\n")
                report.write("```java\n")
                report.write(safe_read(f))
                report.write("\n```\n\n")

        report.write("## `R.string.server_host`\n\n")
        if not resource_hits:
            report.write("Точное объявление ресурса `<string name=\"server_host\">` не найдено. Проверьте APK/JADX resource output или включите в поиск каталог `res/values*` из apktool.\n\n")
        else:
            unique = {}
            for f, snippet in resource_hits:
                unique[(str(f), snippet)] = (f, snippet)
            for f, snippet in unique.values():
                report.write(f"### `{f.relative_to(root) if f.is_relative_to(root) else f}`\n\n")
                report.write("```xml\n")
                report.write(snippet)
                report.write("\n```\n\n")

        report.write("## Упоминания `server_host` в коде\n\n")
        seen = set()
        for f, snippet in resource_hits:
            if f.suffix.lower() == ".xml":
                continue
            key = (str(f), snippet)
            if key in seen:
                continue
            seen.add(key)
            report.write(f"### `{f.relative_to(root) if f.is_relative_to(root) else f}`\n\n")
            report.write("```text\n" + snippet + "\n```\n\n")

    print(f"Готово: {out}")
    print("Классы:")
    for name in sorted(CLASS_NAMES):
        print(f"  {name}: {len(found_classes[name])}")
    print(f"Найдено resource/code упоминаний server_host: {len(resource_hits)}")

if __name__ == "__main__":
    main()
