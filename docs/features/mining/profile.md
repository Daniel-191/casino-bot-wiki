# /mine profile

Your mining stats hub - level, XP, lifetime earnings, equipped pickaxe, active perks, available abilities, and a depth switcher.

## Description

The dashboard for your mining career. Shows everything that's accumulated since your first dig and lets you switch between unlocked depths.

## Usage

`/mine profile`

## Examples

`/mine profile`

## What it shows

- **Equipped Pickaxe** - name, emoji, level required, value/XP/rare bonuses.
- **Level + XP bar** - current level, XP, and XP needed for next level.
- **Lifetime Stats**
  - Total ores mined
  - Total money earned
  - Total XP earned
  - Total sessions
- **Active perks** - every perk unlocked for your current level (auto-applied).
- **Available abilities** - list of unlocked abilities and their cooldowns.
- **Depth selector** - switch your current depth to any depth you've unlocked.

## Depth switcher

By default `/mine dig` always uses your **deepest unlocked depth**. Use the depth switcher in this view if you want to mine a shallower depth (e.g., farming a specific common ore needed for crafting).

The switcher shows every depth and its level requirement. Locked depths are visible but greyed out.

## Notes

- Public read-only view of your own profile.
- Switching depth applies to your **next** `/mine dig` session.
- For the full depth ore pools, see [`/mine depths`](depths.md).
- For perk + ability mechanics, see the [Mining index](index.md).
- For sale/craft, see [`/mine inventory`](inventory.md).
