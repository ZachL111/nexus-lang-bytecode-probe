# Review Journal

I treated `nexus-lang-bytecode-probe` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 188, lane `ship`
- `stress`: `lowering drift`, score 233, lane `ship`
- `edge`: `stack depth`, score 129, lane `watch`
- `recovery`: `diagnostic reach`, score 176, lane `ship`
- `stale`: `IR pressure`, score 233, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
