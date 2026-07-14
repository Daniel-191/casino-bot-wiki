# /scratch history

Paginated history of every scratch session - what you opened, what you won, and when.

## Description

Each time you open one or more cards in a session, a record is saved. This command lets you flip through those past sessions (most recent first) and see exactly which rewards came out.

## Usage

`/scratch history`

## Examples

`/scratch history`

## What it shows

The history embed paginates **5 sessions per page** with arrow buttons to navigate. Each session shows:

- Date opened.
- Number of cards in that session.
- Rewards received (money, boosts, gifts, lottery tickets).
- Total money won that session.

A summary panel on every page shows your overall stats:

- **Total Sessions** - how many times you've scratched.
- **Total Cards Opened** - lifetime cards across all sessions.
- **Total Winnings** - lifetime money earned from scratches.
- **Best Single Win** - your single best scratch payout.
- **Patreon Gifts Won** (if any) - total gifts pulled.

## Notes

- **Cooldown:** 5 seconds.
- 5 sessions per page; pagination buttons appear if you have more.
- For just the totals (no per-session breakdown), see [`/scratch stats`](stats.md).
- For gift-transfer history (cards sent/received), see [`/scratch pay-history`](pay-history.md).
