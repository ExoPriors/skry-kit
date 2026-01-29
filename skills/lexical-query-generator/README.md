# Lexical Query Generator

Generate high-coverage lexical search terms for Scry's BM25 search functions.

This skill is designed to turn a natural-language research question into:
- weighted term candidates (single words + phrases),
- recommended query strings for `scry.search()` / `scry.search_exhaustive()`,
- suggested filters (sources, kinds, time ranges).

## Files

- `PROMPT.md` — subagent prompt
- `schema.json` — output schema (JSON)
- `examples.json` — sample outputs
