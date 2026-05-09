#!/usr/bin/env python3
"""Sort ## date headings under # Log sections in reverse chronological order."""

import re
import sys
from pathlib import Path


DATE_HEADING = re.compile(r'^## (\d{4}-\d{2}-\d{2})')


def sort_log_sections(text: str) -> str:
    lines = text.splitlines(keepends=True)
    result = []
    i = 0

    while i < len(lines):
        # Detect a # Log heading (any level-1 heading named "Log")
        if re.match(r'^# Log\s*$', lines[i]):
            result.append(lines[i])
            i += 1

            # Collect everything until the next level-1 heading or EOF
            log_block = []
            while i < len(lines) and not re.match(r'^# ', lines[i]):
                log_block.append(lines[i])
                i += 1

            # Split log_block into: preamble + list of (date, content) sections
            preamble = []
            sections = []
            current_date = None
            current_body = []

            for line in log_block:
                m = DATE_HEADING.match(line)
                if m:
                    if current_date is not None:
                        sections.append((current_date, current_heading_line, current_body))
                    elif current_body:
                        preamble = current_body
                    current_date = m.group(1)
                    current_heading_line = line
                    current_body = []
                else:
                    current_body.append(line)

            if current_date is not None:
                sections.append((current_date, current_heading_line, current_body))
            elif current_body and not sections:
                preamble = current_body

            # Sort sections by date descending
            sections.sort(key=lambda s: s[0], reverse=True)

            result.extend(preamble)
            for _, heading_line, body in sections:
                result.append(heading_line)
                result.extend(body)
        else:
            result.append(lines[i])
            i += 1

    return ''.join(result)


def process_file(path: Path) -> None:
    original = path.read_text(encoding='utf-8')
    updated = sort_log_sections(original)
    if updated != original:
        path.write_text(updated, encoding='utf-8')
        print(f"Sorted: {path}")
    else:
        print(f"No change: {path}")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <file> [file ...]")
        sys.exit(1)
    for arg in sys.argv[1:]:
        process_file(Path(arg))
