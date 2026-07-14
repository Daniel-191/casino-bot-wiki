# /lottery

The lottery hub - buy tickets, view your entries, check the current pot, and browse past winners.

## Description

`/lottery` opens an interactive embed with buttons for every lottery action. Each ticket costs **$1,000,000,000** ($1B). Drawing happens daily at **3 PM UTC**.

## Usage

`/lottery`

## Examples

`/lottery`

## Buttons

| Button | What it does |
|---|---|
| **Buy Tickets** | Pick 1, 2, 3, 5, 10, or 15 tickets to purchase ($1B each). 15-ticket option is **Patreon only** |
| **My Tickets** | View your purchased tickets, scratch-card-won tickets, and total entry count |
| **Pot** | Current pot value + breakdown |
| **Winners** | Last 10 lottery winners + prizes (after tax) |

## Buy ticket flow

1. Click **Buy Tickets**.
2. Pick how many to buy (1, 2, 3, 5, 10, or 15 - the 15-pack is locked behind Patreon).
3. The bot validates:
   - You have enough money.
   - You're under the per-draw limit (10 regular / 15 Patreon).
4. Confirmation embed shows: total cost, balance after, draw timestamp.
5. Click **Buy** to confirm; money is deducted and tickets registered.

## Per-draw ticket caps

| Status | Cap |
|---|---|
| Regular user | 10 purchased tickets per draw |
| Patreon | 15 purchased tickets per draw |

**Tickets won from scratch cards do not count against this cap** - you can exceed 10/15 total tickets if some came from `/scratch open` drops.

## Drawing schedule

- **Time:** 3:00 PM UTC every day.
- **Reset:** at 3 PM UTC, that day's pot is awarded and the next day's pot starts fresh.
- **Pot funding:** ticket sales + heist taxes + miscellaneous tax inflows.

## Selection algorithm

When the draw fires, every ticket is treated as a separate entry. The bot picks one ticket via weighted random selection - so 10 tickets gives you 10× the odds vs. someone with 1 ticket.

## Notes

- **Cooldown:** 3 seconds.
- **Ticket price:** $1,000,000,000 - fixed.
- Drawing time is **3 PM UTC** (the embed converts and shows it as your local relative timestamp).
- Winner pays **standard tier tax** on the prize (lower for higher Patreon tiers).
- For free tickets via scratch cards, see [`/scratch open`](../../economy/scratch/open.md).
