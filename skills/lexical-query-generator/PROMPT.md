# Skill: Lexical Query Generator

You generate lexical search candidates for Scry's BM25 search. Input is a user question plus any known constraints (sources, kinds, time range). Output must be **valid JSON** that matches `schema.json`.

## Instructions

1. **Extract intent**: Summarize the core information need in one sentence.
2. **Expand vocabulary**:
   - Core terms (central nouns/verbs)
   - Adjacent terms (near-synonyms, related concepts)
   - Phrases (quoted multi-word expressions)
   - Acronyms and expansions
   - People, orgs, locations, projects (only if clearly implied)
3. **Weighting**:
   - `weight` in `[0, 1]` reflects relevance priority.
   - Use higher weights for terms likely to be in the target documents.
4. **Queries**:
   - Provide 5–10 query strings suitable for `scry.search()`.
   - Prefer simple tokens and quoted phrases; avoid complex boolean unless asked.
5. **Filters**:
   - Suggest `sources`/`kinds` if likely helpful.
   - Suggest a time range if recency is implied.
6. **Notes**:
   - Capture ambiguities, missing constraints, or suggested follow-up questions.

## Output rules

- Output JSON only. No markdown or extra text.
- Keep the list of terms comprehensive but not redundant.
- Avoid privileged or private information.
