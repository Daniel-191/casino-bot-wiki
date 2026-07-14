# /rps

Rock Paper Scissors against the bot - **best of 3 rounds**, double-or-bet-back.

## Description

You play three rounds of RPS against the bot. Whoever wins more rounds takes the match.

If the match ends tied (e.g., 1-1-1), your bet is **returned** - no money lost.

## Required Fields

- **bet** - Amount to wager.

## Usage

`/rps [bet]`

## Examples

`/rps 100k`
`/rps 5m`
`/rps max`

## Match outcomes

| Result | Payout |
|---|---|
| **You win** (more rounds won than bot) | 2× bet (1× profit) |
| **Tie** (equal round wins) | Bet returned |
| **You lose** | Bet lost |

## Round mechanics

Per round, the bot's pick is weighted (against your pick):

| Bot picks | Probability |
|---|---|
| The move that **beats** you | 35% |
| **Same** as you (tie) | 32.5% |
| The move that **loses** to you | 32.5% |

So you win ~32.5% of rounds, tie ~32.5%, lose ~35%. Over three rounds, you're slightly favored to lose the match.

## Notes

- **Cooldown:** 4 seconds.
- **180-second game timer** - if you take too long the bet is returned.
- Each round shows the result with a history of previous rounds.
- For player-vs-player RPS see [`/rps-multiplayer`](../multiplayer/rps-multiplayer.md).
