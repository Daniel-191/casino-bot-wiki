# Lottery

Daily community lottery - buy $1B tickets, every winning heist + various game taxes feed the pot, one winner takes everything at 3 PM UTC.

## How it works

1. **Buy tickets** with [`/lottery`](lottery.md). Each ticket costs **$1,000,000,000** (1B).
2. The pool fills with:
   - Every player's ticket purchases.
   - **Heist tax** - a percentage of every winning heist (20% non-Patreon, 0% Tier 6+).
   - Other taxed actions feed the same pool.
3. **Drawing happens daily at 3 PM UTC** - the bot picks one winning ticket weighted by total tickets.
4. **Winner takes the entire pot** (minus a winner's tax).

## Ticket limits

| Status | Max tickets per draw |
|---|---|
| Regular user | **10** |
| Patreon (any tier) | **15** |

This limits whales but still lets active players have a real shot at winning.

## How to get tickets

| Source | How |
|---|---|
| **Buy** | [`/lottery`](lottery.md) → `Buy Tickets` button - $1B each |
| **Scratch cards** | Some scratch cards drop **lottery tickets** (1, 2, 3, 5, or 10 at a time) - see [`/scratch open`](../../economy/scratch/index.md) |

Scratch-card tickets count toward your **total** but **don't count against your purchase cap** - you can have more than 10 (or 15) tickets in a draw if some came from scratch cards.

## Drawing details

- **Time:** 3 PM UTC, every day.
- **Selection:** weighted random (more tickets = better odds).
- **Pot composition:** ticket sales + heist tax + other taxes.
- **Winner's tax:** standard tier-based tax cuts in (smaller bite for higher Patreon tiers).
- **Winners announced** daily in the [Paradise Discord server](https://discord.gg/vMcbru7qMV).

## Pot growth

The lottery pool grows every time:

- Someone buys tickets.
- A heist resolves with a winning team (heist tax cut goes to the lottery).
- A taxed action triggers (`add_lottery_tax` is called).

So the pot is generally larger after busy days with lots of heists.

## Commands

- [`/lottery`](lottery.md) - Buy tickets, view your tickets, see the current pot, view past winners.

## Notes

- Pot starts fresh every day after the 3 PM UTC drawing.
- Only one winner per draw.
- Tickets don't roll over - unused tickets disappear after the draw.
- For more on the heist tax that feeds this pool, see the [Heists overview](../../games/heists/index.md#tax-on-winnings).
