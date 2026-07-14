# /coinflip-duel

Pure 50/50 duel - both players pick a side of the coin (one heads, one tails), the bot flips, the correct picker takes the pot.

## Description

You challenge another player. Both pick **Heads** or **Tails** - they must be different (the bot won't let you both pick the same side). The coin flips, and whoever picked the right side wins both bets.

Cleanest possible 1v1 in the bot - no skill, no comeback, just one flip.

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/coinflip-duel [opponent] [bet]`

## Examples

`/coinflip-duel @username 100k`
`/coinflip-duel @username 5m`
`/coinflip-duel @username max`

## Match flow

1. Challenge sent - opponent has 60 seconds to accept.
2. After accepting, both players pick Heads or Tails (must be different).
3. Coin flips with a short animation.
4. Winner takes `bet × 2`; loser loses the bet.

## Notes

- **Cooldown:** 4 seconds.
- **Min bet:** $10,000.
- **No max bet cap** - `max` confirms before locking in your full balance.
- Both wallets must cover the bet to start.
- Each player can only be in one game at a time.
- For solo coinflip, see [`/coinflip`](../casino/coinflip.md).
