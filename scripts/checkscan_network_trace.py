#!/usr/bin/env python3
"""Find CheckScan APK auth routes and the Retrofit/OkHttp client setup.

Run from repository root:
    python3 checkscan_network_trace.py
Optional:
    python3 checkscan_network_trace.py --root . --out reports/network_trace.md
    python3 checkscan_network_trace.py --root apk_analysis/jadx/sources
"""
from __future__ import annotations

import argparse
import re
from pathlib import Path

PATTERNS = [
    ("SIGN-IN ROUTES / DTO", re.compile(
        r"signin/v2|signin/confirm/v2|SignInRequestBody|SignInConfirm|confirmType|destinationType",
        re.I)),
    ("CLIENT / INTERCEPTOR SETUP", re.compile(
        r"authorized_retrofit|plain_retrofit|addInterceptor|addNetworkInterceptor|"
        r"Interceptor|OkHttpClient|Retrofit\.Builder|baseUrl\s*\(|"
        r"addHeader|header\s*\(|User-Agent|Authorization", re.I)),
    ("API HOST / NETWORK CONFIG", re.compile(
        r"api\\.checkscan\\.org|BASE_URL|baseUrl|BuildConfig\\.(?:API|BASE)|"
        r"HttpLoggingInterceptor|Authenticator", re.I)),
]
EXTS = {".java", ".kt", ".smali", ".xml", ".json", ".txt"}
SKIP = {".git", "build", ".gradle", "node_modules", "__pycache__"}
CONTEXT = 5


def discover_sources(root: Path) -> list[Path]:
    candidates = [
        root / "apk_analysis" / "jadx" / "sources",
        root / "apk_analysis" / "jadx",
        root / "apk_analysis" / "apktool",
        root / "jadx" / "sources",
        root / "sources",
        root,
    ]
    for candidate in candidates:
        if candidate.is_dir() and any(candidate.rglob("*.java")) or (
            candidate.is_dir() and any(candidate.rglob("*.smali"))
        ):
            return [candidate]
    return []


def scan(source: Path):
    results = []
    for file in source.rglob("*"):
        if not file.is_file() or file.suffix.lower() not in EXTS:
            continue
        if any(part in SKIP for part in file.parts):
            continue
        try:
            lines = file.read_text(encoding="utf-8", errors="replace").splitlines()
        except OSError:
            continue
        matched_lines = set()
        categories = []
        for category, pattern in PATTERNS:
            hits = [i for i, line in enumerate(lines) if pattern.search(line)]
            if hits:
                categories.append(category)
                for i in hits:
                    matched_lines.update(range(max(0, i-CONTEXT), min(len(lines), i+CONTEXT+1)))
        if matched_lines:
            results.append((file, categories, lines, sorted(matched_lines)))
    return results


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path.cwd(),
                        help="repository root or directory containing decompiled sources")
    parser.add_argument("--out", type=Path, default=Path("reports/network_trace.md"),
                        help="Markdown report output path")
    args = parser.parse_args()
    root = args.root.expanduser().resolve()
    sources = discover_sources(root)
    if not sources:
        raise SystemExit(
            f"Не найдены декомпилированные .java/.smali исходники под {root}. "
            "Проверь apk_analysis/jadx/sources или передай --root."
        )
    output = [
        "# CheckScan — сетевой трассировщик авторизации APK", "",
        f"- Repository/root: `{root}`",
        f"- Scan directory: `{sources[0]}`",
        "- Context: 5 строк до и после совпадений",
        "- Это поиск текстовых признаков, не доказательство выполнения конкретного кода.", "",
    ]
    found = scan(sources[0])
    if not found:
        output += ["Совпадений не найдено."]
    for file, categories, lines, indices in found:
        output += ["", "---", "", f"## `{file.relative_to(root) if file.is_relative_to(root) else file}`",
                   "", f"**Разделы:** {', '.join(categories)}", "", "```"]
        output += [f"{i+1:5}: {lines[i]}" for i in indices]
        output += ["```", ""]
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(output), encoding="utf-8")
    print(f"Просмотрено совпадающих файлов: {len(found)}")
    print(f"Отчёт: {args.out.resolve()}")
    print("Сначала изучи блоки SIGN-IN ROUTES / DTO, затем CLIENT / INTERCEPTOR SETUP.")


if __name__ == "__main__":
    main()
