# /scratch inventory

View and manage stored scratch card rewards - Patreon gifts and farm boosts you saved for later instead of using immediately.

## Description

When you open a scratch card and choose **Store** instead of **Use Now**, the reward goes here. From the inventory you can:

- Apply farm boosts to your current crops on demand.
- Claim Patreon gifts (activates a 7-day membership at the rolled tier).
- Remove items you don't want.

Money rewards never appear here - they're applied instantly when scratched.

## Usage

`/scratch inventory`

## Examples

`/scratch inventory`

## What's stored

| Item | Source | Action |
|---|---|---|
| **Farm Boost** | Stored from a scratch open | Apply to currently growing crops to cut grow time |
| **Patreon Gift** | Always stored on draw | Claim to activate a 7-day membership at the rolled tier |
| **Lottery Tickets** | (auto-applied at scratch time) | - |

Patreon gifts are stored automatically because activating one replaces your current membership tier for 7 days - you decide when to use it.

## Notes

- **Cooldown:** 3 seconds.
- Farm boosts only apply if you have crops planted; the bot tells you which crops were boosted.
- Patreon gifts give you the rolled tier's perks (vote bonuses, weekly scratches, multipliers) for 7 days from claim.
- See [`/scratch open`](open.md) for how rewards land here, and the [Scratch Tickets index](index.md) for the full reward list.
