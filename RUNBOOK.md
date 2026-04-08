# RUNBOOK.md

## Purpose
This file defines how Codex should work on this repository.
The goal is to reduce drift, avoid unstable iteration, and keep work milestone-driven.

## Operating Rules
1. Read `SPEC.md` and `PLANS.md` before making any code changes.
2. Work on exactly one milestone at a time.
3. Before editing code, restate the current milestone and its acceptance criteria briefly.
4. Make the smallest set of changes that can satisfy the milestone.
5. After changes, run the milestone validation commands.
6. If validation fails, repair first. Do not proceed.
7. Do not silently change locked design direction or scope.
8. Do not introduce new frameworks or large refactors unless the current milestone truly requires it.
9. Keep edits traceable and reversible.
10. Update `CHANGELOG.md` after each completed milestone.

## Design Constraints
- Mobile-first always
- Builder must feel like a jewelry customization tool
- Must not resemble prior AI/SaaS landing-page aesthetics
- Smoothness and predictability are more important than visual spectacle
- Avoid expensive effects that hurt mobile performance

## V1 Interaction Constraints
Must support:
- tap to add with visible fly-in feedback
- long-press drag to delete zone
- auto reflow after add/delete
- real-time price and quantity updates
- tap-to-replace selected bead

Must not introduce in V1:
- free-form reorder drag
- 3D bracelet editing
- complex gesture systems
- social/community features

## Architecture Constraints
- Frontend should provide immediate local feedback
- Backend is the source of truth for catalog, quote, save/load
- Quote/save/load must be API-based, not hidden in frontend state only
- WooCommerce handoff should remain separated until builder state is stable

## Validation Discipline
For every milestone:
1. Run the listed validation commands.
2. Run the listed manual validation steps when UI interaction is involved.
3. Record pass/fail results.
4. If anything fails, fix it before moving on.

## Safe Change Strategy
Prefer:
- small additions
- local refactors only when necessary
- explicit state transitions
- simple data contracts
- conservative animation tuning

Avoid:
- broad rewrites without milestone need
- changing multiple layers at once unless required
- speculative features not covered by acceptance criteria

## Persistence and Recovery Rules
If a task introduces persistent data, migrations, seeds, or environment assumptions, document:
- how to initialize
- how to reset
- how to re-run safely
- what is idempotent and what is not

## Output Contract Per Milestone
After completing a milestone, output:
- current milestone name
- files changed
- what was implemented
- validation commands run
- validation results
- manual validation results
- known limitations
- next recommended step

## Decision Rule When Uncertain
When uncertain, choose the simpler implementation that satisfies acceptance criteria and preserves the locked product direction.
