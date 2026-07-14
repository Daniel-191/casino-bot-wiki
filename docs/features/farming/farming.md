# /farming

Open your farm interface - plant new crops, harvest ready ones, browse seeds, and manage settings.

## Description

The main entry point for the entire farming system. Running `/farming` brings up an interactive embed with buttons for every action: **Plant**, **Harvest**, **Replant**, **Settings**, and a live view of your slots and growing crops.

## Usage

`/farming`

## Examples

`/farming`

## Buttons available

| Button | What it does |
|---|---|
| **Plant** | Pick a crop, quantity, fertilizer, and slot(s). Pays the seed cost up front. |
| **Harvest** | Collect every ready crop in one click. Money lands instantly. |
| **Replant** | After a harvest, replant the same crops + fertilizers in the same slots in one click. |
| **Shop** | Browse seeds and fertilizers. |
| **Settings** | Toggle auto-replant (donators), notifications, etc. |

## Plot rules

- **Each slot holds up to 100 crops.**
- Slots run in parallel - planting in slot 1 doesn't block slot 2.
- Mixed slots are fine: each slot stores one crop type at a time, but different slots can hold different crops.

## Performance notes

For very large farms, harvest takes longer:

| Total crops | Harvest timeout |
|---|---|
| Normal | 12 seconds |
| Large | 18 seconds |
| Very large | 25 seconds |

If a harvest times out (only happens with massive farms during peak load), retry - your crops aren't lost. Use `/farm-cleanup` (20s cooldown) for stubborn issues.

## Notes

- **Cooldown:** 6 seconds.
- The Plant menu shows **base** grow time - fertilizer and Patreon speed boosts apply on top once you confirm.
- Auto-replant (donator perk) charges a small **tax** on profit per harvest cycle as the cost of the convenience.
- Scratch card **farm boosts** apply to currently-growing crops only - see [`/scratch open`](../../economy/scratch/open.md).
- For full crop/fertilizer/Patreon tables, see the [Farming index](index.md).
- For event impact, see [`/farming-events`](events.md). For totals, see [`/farming-stats`](stats.md).
