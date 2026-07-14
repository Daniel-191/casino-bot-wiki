# /heist-stats

Your full heist record - wins, losses, profit, win rate, daily progress, and favorite locations.

## Description

Shows lifetime heist statistics for yourself or another player: total heists hosted vs joined, total wins and losses, money won, money lost, net profit, win rate, favorite location, and total participants you've led on heists you hosted.

Also shows your **daily heist progress** - current count vs your daily limit (with vote bonus included), so you can tell at a glance how many runs you have left today.

## Optional Fields

- **user** - Mention another player to view their heist stats. Defaults to you.

## Usage

`/heist-stats [user]`

## Examples

`/heist-stats`
`/heist-stats @username`

## What it shows

- **Heists Joined / Hosted** - counts split by your role
- **Wins / Losses / Win Rate**
- **Money Won / Money Lost / Net Profit** - color-coded gold (profit), red (loss), blue (break-even)
- **Favorite Location** - most-frequently-targeted heist location
- **Total Participants Led** - how many other players have been on heists you hosted
- **Daily Progress** - `X / Y heists today` where Y includes vote bonus
- **Patreon tier** badge if applicable

## Notes

- **Cooldown:** 5 seconds.
- Stats include **both** multiplayer and solo heists. Solo heists are logged under location `solo`.
- Daily progress resets at midnight UTC.
- Players who haven't run a heist yet show a friendly empty-state message instead of zeros.
- Vote bonus (+2 daily heists) is included in the displayed daily limit when active.
