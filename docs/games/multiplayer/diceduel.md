# /diceduel

Best-of-3 dice rolls vs another player. Higher roll wins each round; first to 2 round wins takes the pot.

## Description

Both players ante up the same bet. Each round, the bot rolls one die for each player and the higher number wins the round. First player to **2 round wins** takes the entire pot. Ties on a single round don't count - neither player scores, the round repeats.

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/diceduel [opponent] [bet]`

## Examples

`/diceduel @username 100k`
`/diceduel @username 5m`
`/diceduel @username max`

## Match flow

1. Challenge sent - opponent has 60 seconds to accept.
2. Both players are locked into the duel; bet is held.
3. Round 1: each player rolls a 6-sided die simultaneously.
4. Higher roll wins the round; tie = no points.
5. Repeat until one player wins 2 rounds.
6. Winner takes `bet × 2`.

## Notes

- **Cooldown:** 4 seconds.
- **Min bet:** $10,000 (uses standard `bet_check`).
- **No max bet cap** - `max` wagers your entire balance.
- Both wallets must cover the bet to start.
- Each player can only be in one game at a time.
- For solo dice, see [`/dice`](../casino/dice.md) (single die guess) or `/multidice` (variable dice size + guess count).
