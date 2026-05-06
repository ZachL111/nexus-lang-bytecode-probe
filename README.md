# nexus-lang-bytecode-probe

`nexus-lang-bytecode-probe` is a compact Julia repository for compilers, centered on this goal: Create a Julia reference implementation for bytecode workflows, centered on simulation kernel, seeded input scenarios, and deterministic summary checks.

## Why It Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Nexus Lang Bytecode Probe Review Notes

The first comparison I would make is `lowering drift` against `stack depth` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/nexus-lang-bytecode-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `lowering drift` and `stack depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Julia addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
