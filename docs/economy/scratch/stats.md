# /scratch stats

Quick scratch card stats for yourself or another user - totals, best win, current card count, average win.

## Description

Lighter than `/scratch history` - this just shows the totals, not the per-session breakdown. Great for checking how a friend is doing or for a quick "where am I at?" snapshot.

## Optional Fields

- **user** - Discord member to look up. Defaults to yourself.

## Usage

`/scratch stats [user]`

## Examples

`/scratch stats`
`/scratch stats @username`

## What it shows

| Field | What it is |
|---|---|
| **Cards Available** | Unopened cards on the user's account |
| **Total Opened** | Lifetime cards opened |
| **Total Winnings** | Lifetime money won from scratches |
| **Best Win** | Single biggest scratch payout ever |
| **Patreon Gifts Won** | Lifetime Patreon gift drops (if any) |
| **Last Activity** | Relative timestamp of their last scratch |
| **Average Win** | `total_winnings ÷ total_opened` |

## Notes

- **Cooldown:** 5 seconds.
- Public - anyone can look up anyone's stats.
- For the per-session breakdown of your own openings, see [`/scratch history`](history.md).
- For gift transfers in/out, see [`/scratch pay-history`](pay-history.md).
