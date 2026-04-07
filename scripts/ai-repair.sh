#!/usr/bin/env bash

codex exec --full-auto "
Goal:
Make this repository pass its relevant checks with minimal, high-confidence changes.

Constraints:
- Work only in the current repository.
- Keep changes minimal and easy to review.
- First identify the available validation commands.
- Run the relevant checks.
- If a check fails, fix the issue.
- Re-run the checks until they pass or human approval is required.
- At the end, summarize changed files, commands run, and any remaining risks.
"
