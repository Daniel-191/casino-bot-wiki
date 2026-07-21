# /coinflip

Pick heads or tails - fair 50/50, double or nothing.

## Description

You place a bet, the bot reserves the result, and you pick **HEADS** or **TAILS** from a button. The coin flips with a brief animation. Match the result and you double your money; miss and you lose your bet.

This is the cleanest game in the casino - no bonus rounds, no scaling multipliers, no tricks. Just a coin.

## Required Fields

- **bet** - Amount to wager. Accepts shorthand (`k`, `m`, `b`, `t`) or shortcuts (`min`, `max`, `half`).

## Usage

`/coinflip [bet]`

## Examples

`/coinflip 100k`
`/coinflip 5m`
`/coinflip max`

## Payout

| Outcome | Result |
|---|---|
| **Win** | 2× your bet (1:1 profit) |
| **Loss** | Bet lost |

## Limits

- **Min bet:** $10,000
- **Max bet:** $100 trillion (`/coinflip` overrides the standard $1T limit)

## Notes

- **Cooldown:** 4 seconds.
- **30-second decision timer** - if you don't pick within 30 seconds the bet is refunded.
- The result is locked in **before** you pick - choosing faster doesn't change anything.
- Game has the lowest possible variance per spin: it's literally always 2× or 0.
- For player-vs-player coinflips, see [`/coinflip-duel`](../multiplayer/coinflip-duel.md) instead.
