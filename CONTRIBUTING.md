# Contributing to Skry Kit

Thanks for helping improve Scry workflows.

## Adding a new skill

1. Create a new folder under `skills/<skill-name>/`.
2. Include:
   - `PROMPT.md` — the subagent prompt
   - `schema.json` — expected output schema (JSON)
   - `examples.json` — at least one example output
3. Keep prompts concise and avoid any secrets or private keys.

## Review checklist

- Output is deterministic and schema-conformant.
- Skill avoids privileged or private information.
- Examples are realistic and easy to adapt.
- Names and paths are clear and stable.

## Style

- Prefer short, direct instructions.
- Assume users will run this in multiple agent frameworks.
- Avoid date-relative language.
