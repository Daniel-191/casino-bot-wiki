# /baccarat

Classic casino card game - bet on **Player**, **Banker**, or **Tie** and watch the closer-to-9 hand win.

## Description

You place a single bet, then choose one of three outcomes. The bot deals two hands (Player and Banker) following standard baccarat third-card rules, and pays out based on which hand wins.

Card values: 2–9 = face value, 10/J/Q/K = 0, A = 1. Hand totals over 9 use only the second digit (e.g., 15 = 5). Closest to 9 wins.

## Required Fields

- **bet** - Amount to wager. Accepts numbers, shorthand (`k`, `m`, `b`, `t`), or shortcuts (`min`, `max`, `half`).

## Usage

`/baccarat [bet]`

## Examples

`/baccarat 100k`
`/baccarat 5m`
`/baccarat max`

## Payouts

| Bet | Multiplier | Profit on win |
|---|---|---|
| **Player** | 2.0× | 1:1 (your bet doubled) |
| **Banker** | 1.95× | 1:1 minus 5% commission |
| **Tie** | 9.0× | 8:1 |

The 5% banker commission is the standard real-casino edge. Tie pays 8:1 but rarely hits.

## Notes

- **Cooldown:** 5 seconds.
- **One game at a time** - finish or let the lobby expire before starting another.
- The lobby auto-closes after 60 seconds if no bet is placed; your money is returned.
- Recent results history is shown after each round (last 10 outcomes).
- The bot follows standard baccarat third-card rules - neither player nor banker can be hit-or-stand independently.
