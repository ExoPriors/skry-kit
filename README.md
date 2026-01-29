# Skry Kit

A public, lightweight starter kit for working with the Scry corpus: prompts, agent skills, and a portable sandbox.

## What this repo is

- **Prompts**: a ready-to-use `CLAUDE.md` for Scry work.
- **Skills**: subagent templates (start with lexical query generation).
- **Sandbox**: a Docker-based shell that lets you run Scry API queries safely.

If you are new to Scry, start with the sandbox and then use the prompt to guide your search.

## Quickstart

1. Copy `.env.example` to `.env` and set `EXOPRIORS_API_KEY` or `SCRY_PUBLIC_KEY`.
2. Run the sandbox:
   ```bash
   cd sandbox
   chmod +x run.sh
   ./run.sh
   ```
3. From inside the container, run a simple query:
   ```bash
   curl -X POST https://api.exopriors.com/v1/scry/query \
     -H "Authorization: Bearer $SCRY_PUBLIC_KEY" \
     -H "Content-Type: text/plain" \
     --data-binary "SELECT COUNT(*) FROM scry.entities LIMIT 1"
   ```

## Prompts and skills

- `CLAUDE.md` contains the base Scry prompt (generated from `src/api/src/routes/scry_prompts.rs` via `src/web/scripts/generate_scry_public_prompt.mjs`).
- `skills/` contains subagent templates you can plug into your agent framework.

## Contributing

See `CONTRIBUTING.md` for the skill format and review checklist.
