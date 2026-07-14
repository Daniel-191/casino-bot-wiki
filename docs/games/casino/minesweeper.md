# /minesweeper

Reveal safe tiles on a 4×5 grid hiding 4 mines. Each safe tile pumps your multiplier - cash out before you click a mine.

## Description

You bet, and the bot generates a **4 row × 5 column** grid (20 tiles total) with **4 mines** hidden among them - leaving **16 safe tiles**. Click any tile:

- **Safe** → multiplier increases by **+0.20×**
- **Mine** → instant loss, game over

Reveal **all 16 safe tiles** and you auto-cash-out for the maximum payout. Or click **Cash Out** at any time once your multiplier is high enough.

## Required Fields

- **bet** - Amount to wager.

## Usage

`/minesweeper [bet]`

## Examples

`/minesweeper 100k`
`/minesweeper 5m`
`/minesweeper max`

## Multiplier table

Starting multiplier is **0.80×** (cashing out before any reveals would actually lose money). Each safe tile adds 0.20×:

| Tiles revealed | Multiplier |
|---|---|
| 0 | 0.80× (locked) |
| 1 | 1.00× (locked) |
| 2 | 1.20× (locked) |
| 3 | 1.40× (locked) |
| 4 | **1.60×** ← cashout unlocks here |
| 5 | 1.80× |
| 6 | 2.00× |
| 8 | 2.40× |
| 10 | 2.80× |
| 12 | 3.20× |
| 14 | 3.60× |
| 16 (perfect) | **4.00×** (auto-cashout) |

## Mine probability

Per click, with `m` mines remaining and `t` tiles unrevealed: chance of hitting a mine = `m / t`. So the danger ramps up as the grid empties.

| Tiles revealed | Approximate mine risk on next click |
|---|---|
| 0 | 4/20 = 20% |
| 4 | 4/16 = 25% |
| 8 | 4/12 = 33% |
| 12 | 4/8 = 50% |
| 14 | 4/6 = 67% |

## Notes

- **Cooldown:** 7 seconds.
- **Cashout requires multiplier ≥ 1.6×** - minimum 4 safe tiles revealed.
- **180-second game timer** - running out forfeits the bet.
- Hitting a mine reveals all other mines on the board.
- Pure-luck game - there's no minesweeper-style number hint; every tile is equally likely.
