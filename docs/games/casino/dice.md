# /dice

Pick a number 1–6, place a bet, and roll a single die. Match the number for a 3× payout.

## Description

You pick a number from 1 to 6 and bet on it. The bot rolls a six-sided die. If your number comes up, you win **3×** your bet (2× profit). Otherwise the bet is lost.

The actual hit rate is around **29%** - slightly above the natural 16.7% for a single die, but below the 33% break-even point for a 3× payout, which gives the house its edge.

## Required Fields

- **bet** - Amount to wager.
- **number** - The number you're betting on (1–6).

## Usage

`/dice [bet] [number]`

## Examples

`/dice 100k 6`
`/dice 5m 3`
`/dice max 1`

## Payout

| Outcome | Result |
|---|---|
| **Match** | 3× bet (2× profit) |
| **Miss** | Bet lost |

## Notes

- **Cooldown:** 4 seconds.
- The bet number is forced from the dropdown - no typos possible.
- A short rolling animation plays before the result is shown.
- Compare with [`/diceduel`](../multiplayer/diceduel.md) for a player-vs-player version.
