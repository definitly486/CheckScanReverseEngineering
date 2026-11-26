#!/usr/bin/env python3
"""Focused CheckScan auth/network reverse-engineering report generator.

Run from repository root:
  python3 scripts/analyze_auth_network.py
  python3 scripts/analyze_auth_network.py --root apk_analysis/apktool --out reports/auth_network
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from collections import defaultdict

CLASS_NAMES = ("dw1", "am2", "cv", "cv2", "cv5")
SIGNALS = {
    "auth_flow": re.compile(r"signin|sign.?in|login|auth|otp|sms|code|confirm|verification", re.I),
    "endpoint": re.compile(r"retrofit2/http/|https?://|/v[0-9]+/|signin|auth|token|otp|sms", re.I),
    "host_resource": re.compile(r"server_host|base.?url|host", re.I),
    "token_header": re.compile(r"authorization|bearer|access.?token|refresh.?token|token|interceptor|header", re.I),
    "confirm_method": re.compile(r"sms|email|call|push|otp|code|confirm|verify|challenge", re.I),
    "retrofit": re.compile(r"retrofit2/http/(GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS|HTTP)", re.I),
}
NOISE = re.compile(r"ViewBinding|Generated|BindingImpl|retrofit2/.*(Utils|Factory)|kotlin/jvm/internal", re.I)


def iter_files(root: Path):
    for p in root.rglob("*"):
        if p.is_file() and p.suffix.lower() in {".smali", ".xml", ".java", ".kt", ".txt"}:
            yield p


def method_blocks(text: str):
    lines = text.splitlines()
    start = None
    for i, line in enumerate(lines):
        if line.startswith(".method "):
            start = i
        elif start is not None and line.startswith(".end method"):
            yield start, i, lines[start:i + 1]
            start = None


def classify(path: Path, text: str):
    tags = []
    name = path.name.lower()
    if any(name == f"{c}.smali" or name.startswith(c + "$") for c in CLASS_NAMES):
        tags.append("target_class")
    for tag, pattern in SIGNALS.items():
        if pattern.search(text):
            tags.append(tag)
    if "retrofit2/http/" in text:
        tags.append("retrofit_api")
    if "Interceptor" in path.name or re.search(r"implements .*Interceptor", text):
        tags.append("interceptor_candidate")
    return sorted(set(tags))


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--root", type=Path, default=Path("apk_analysis/apktool"))
    ap.add_argument("--out", type=Path, default=Path("reports/auth_network"))
    args = ap.parse_args()
    root = args.root.resolve()
    if not root.exists():
        raise SystemExit(f"Analysis root does not exist: {root}")

    files, findings, resource_hits = [], [], []
    for path in iter_files(root):
        try:
            text = path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        rel = str(path.relative_to(root))
        tags = classify(path, text)
        if tags:
            files.append({"file": rel, "tags": tags})
        if path.suffix == ".xml" and SIGNALS["host_resource"].search(text):
            for n, line in enumerate(text.splitlines(), 1):
                if SIGNALS["host_resource"].search(line) or "http" in line.lower():
                    resource_hits.append({"file": rel, "line": n, "text": line.strip()[:500]})

        for start, end, block in method_blocks(text):
            block_text = "\n".join(block)
            matched = [tag for tag, pat in SIGNALS.items() if pat.search(block_text)]
            if not matched:
                continue
            if NOISE.search(rel) and not ({"endpoint", "token_header"} & set(matched)):
                continue
            findings.append({
                "file": rel, "line_start": start + 1, "line_end": end + 1,
                "method": block[0].strip(), "signals": matched,
                "excerpt": "\n".join(block[:100])[:7000],
            })

    # Deduplicate and rank useful code over generic library noise.
    findings.sort(key=lambda x: (
        0 if "target_class" in classify(root / x["file"], x["method"] + x["excerpt"]) else 1,
        0 if "retrofit" in x["signals"] or "token_header" in x["signals"] else 1,
        x["file"], x["line_start"],
    ))
    args.out.mkdir(parents=True, exist_ok=True)
    data = {
        "root": str(root), "target_classes": list(CLASS_NAMES),
        "candidate_files": files, "resource_matches": resource_hits,
        "method_findings": findings,
        "notes": [
            "Matches are static-analysis candidates, not proof of runtime behavior.",
            "A Retrofit annotation defines a route only when attached to a real service method.",
            "Do not classify receipt/Tax API routes as login routes without a call-chain link.",
            "A token field or header name alone does not establish refresh-token semantics.",
        ],
    }
    (args.out / "auth_network_findings.json").write_text(
        json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8"
    )

    md = ["# CheckScan: focused auth/network analysis", "",
          f"- Decompiled root: `{root}`",
          f"- Candidate methods: **{len(findings)}**",
          f"- Resource matches: **{len(resource_hits)}**", "",
          "## Resource / host candidates", ""]
    if resource_hits:
        md += [f"- `{x['file']}:{x['line']}` — `{x['text']}`" for x in resource_hits]
    else:
        md.append("No matching resource lines found.")
    md += ["", "## Method candidates", "",
           "> Excerpts are grouped by method. Check callers and class references before concluding.", ""]
    for item in findings:
        md += [f"### `{item['file']}:{item['line_start']}`",
               f"- Method: `{item['method']}`",
               f"- Signals: {', '.join(item['signals'])}", "",
               "```smali", item["excerpt"], "```", ""]
    (args.out / "auth_network_findings.md").write_text("\n".join(md), encoding="utf-8")
    print(f"Done: {args.out / 'auth_network_findings.md'}")
    print(f"JSON: {args.out / 'auth_network_findings.json'}")
    print(f"Methods: {len(findings)}; resource matches: {len(resource_hits)}")


if __name__ == "__main__":
    main()
