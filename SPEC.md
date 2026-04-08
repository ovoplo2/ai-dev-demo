# SPEC.md

## Project Name
EU/US Mobile Web Crystal + Zodiac Bracelet Builder

## Product Definition
A mobile-first web bracelet builder for Western markets.

This is **not** a generic landing page and **not** a native app.
It is a browser-based customization tool focused on bracelet design, meaning-based selection, and a later ecommerce handoff.

## Primary Goal
Build a smooth mobile web bracelet builder with:
- tactile interactions
- backend-linked catalog and quote logic
- design save/load capability
- later WooCommerce handoff

## Current Phase Goal
Stabilize the builder as a real product shell before expanding product line complexity.

## Non-Goals For Current Phase
- No native app development
- No 3D rendering
- No free-form drag reorder in V1
- No AI-generated recommendation engine in V1
- No social/community layer
- No heavy visual effects that hurt mobile performance
- No WooCommerce deep integration until builder + save/load is stable

## Locked V1 Interaction Scope
The following interactions are mandatory in V1 and must remain the core baseline:
1. Tap to add bead/charm with visible fly-in feedback
2. Long-press bead and drag to delete zone
3. Auto reflow after add/delete
4. Real-time price and quantity updates
5. Tap selected bead, then tap catalog item to replace it

## UX Priorities
1. Smoothness over flashiness
2. Predictability over novelty
3. Mobile-first ergonomics
4. Immediate local feedback
5. Clear action hierarchy
6. Reliable state restoration

## Visual Direction
The visual language must be clearly separated from prior AI/SaaS/landing-page aesthetics.

### Must Avoid
- purple/pink AI gradient identity
- glowing SaaS cards
- “AI website” layout language
- generic startup hero style
- overly polished marketing-site feel

### Must Feel Like
- a mobile jewelry customization tool
- tactile, quiet, product-like UI
- more operational than promotional
- visually distinct from prior AI-style site design

## Product Character
The builder should feel like a handcrafted jewelry tool for Western mobile users, not like a flashy tech demo.

## Target Users
- mobile-first Western users
- gift shoppers
- zodiac / crystal / meaning-driven buyers
- users who want guided customization rather than fully open-ended design from the start

## Core User Flows
### Flow A: Quick Build
Entry -> pick zodiac/theme -> pick intention -> pick style -> generated bracelet -> edit -> summary -> checkout handoff

### Flow B: Scratch Build
Entry -> builder -> add/replace/delete beads -> summary -> checkout handoff

### Flow C: Save and Return
Builder -> save design -> receive design id -> reopen with saved design restored

## Core Builder Requirements
### Builder Must Support
- bracelet preview rendering
- bead add animation
- bead selection state
- bead replacement
- drag-to-delete zone
- price/count sync
- catalog loading from backend
- summary generation from backend rules

### Builder Must Not Yet Support
- arbitrary drag reorder
- heavy particle effects
- multi-touch transform gestures
- advanced 3D bracelet manipulation

## Data Direction
Backend is the source of truth for:
- catalog
- quote calculation
- meaning summary generation
- save/load design persistence

Frontend is responsible for:
- immediate UI response
- animation feedback
- local transient selection state
- syncing design state to backend

## Technical Direction
### Frontend
- mobile-first web app
- builder UI separated from marketing-site patterns
- fast local interactions

### Backend
- APIs for catalog, quote, save, and load
- clean payloads for future WooCommerce handoff

### Ecommerce Direction
- WooCommerce handoff comes after builder/save/load is stable
- design payload must be attachable to cart/order later

## Performance Direction
- prioritize stable mobile interactions
- avoid visually expensive effects that create lag
- interactions should feel fast on average mobile devices
- local add/delete/replace feedback must not wait on network round trip

## State Rules
- current design must remain stable during tab switching
- summary must reflect builder state exactly
- restore-by-design-id must preserve beads, charms, size, quote, and meaning summary

## Quality Bar For This Phase
The product is not considered ready for the next phase unless:
- builder interactions are smooth and consistent
- backend quote/save/load works reliably
- validation commands pass
- milestone acceptance criteria are met without manual excuses
