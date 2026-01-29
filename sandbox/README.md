# Skry Kit sandbox

A portable Docker Compose shell for running Scry queries.

## Run

```bash
chmod +x run.sh
./run.sh
```

## Example query

```bash
curl -X POST https://api.exopriors.com/v1/scry/query \
  -H "Authorization: Bearer $SCRY_PUBLIC_KEY" \
  -H "Content-Type: text/plain" \
  --data-binary "SELECT COUNT(*) FROM scry.entities LIMIT 1"
```

## Notes

- Set `EXOPRIORS_API_KEY` or `SCRY_PUBLIC_KEY` in `../.env`.
- This container is non-root and persists `$HOME` in a named volume.
