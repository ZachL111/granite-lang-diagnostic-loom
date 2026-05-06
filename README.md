# granite-lang-diagnostic-loom

`granite-lang-diagnostic-loom` explores compilers with a small Julia codebase and local fixtures. The technical goal is to create a Julia reference implementation for diagnostic workflows, centered on policy evaluation, deny and allow fixtures, and explainable decision traces.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Granite Lang Diagnostic Loom Review Notes

For a quick review, compare `IR pressure` with `lowering drift` before reading the middle cases.

## What It Does

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/granite-lang-diagnostic-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `IR pressure` and `lowering drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Julia code keeps the review rule close to the tests.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The same command runs the local verification path. The highest-scoring domain case is `stale` at 224, which lands in `ship`. The most cautious case is `stress` at 153, which lands in `ship`.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
