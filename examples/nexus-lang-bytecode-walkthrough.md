# Nexus Lang Bytecode Probe Walkthrough

I use this file as a small checklist before changing the Julia implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 188 | ship |
| stress | lowering drift | 233 | ship |
| edge | stack depth | 129 | watch |
| recovery | diagnostic reach | 176 | ship |
| stale | IR pressure | 233 | ship |

Start with `stress` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around lowering drift and diagnostic reach.
