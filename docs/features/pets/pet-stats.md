# /pet-stats

Detailed lifetime statistics for your pet - level, XP, total earnings, work count, and more. Works on yourself or any other player.

## Description

Read-only stats panel showing everything that's accumulated over your pet's life: total money earned from work, total XP, level, current stat snapshot, and care history.

Useful for comparing pets, showing off level progress, or peeking at how a friend is doing without opening their `/pets` interface.

## Optional Fields

- **user** - Discord member whose pet stats to show. Defaults to you.

## Usage

`/pet-stats [user]`

## Examples

`/pet-stats`
`/pet-stats @username`

## What it shows

- **Pet name + species + level**
- **XP** - current and to-next-level
- **Current stats snapshot** - hunger, happiness, cleanliness, energy
- **Total Earned** - lifetime money from work
- **Next Work Earnings** - projected earnings for the next work action with current stats
- **Work count** - how many times this pet has worked
- **Pet age** - time since adoption

## Notes

- **Cooldown:** 5 seconds.
- **Read-only** - you can't take actions from this view, just inspect.
- For action buttons (feed, work, etc.), use [`/pets`](pets.md).
- For the full system breakdown, see the [Pets index](index.md).
