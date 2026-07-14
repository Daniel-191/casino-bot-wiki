# /rps-multiplayer

Challenge another player to Rock Paper Scissors. Both players ante up the same bet, pick their move privately, and the winner takes the pot.

## Description

Standard Rock Paper Scissors against a real opponent - no bot weighting, no edge. Both players are charged the bet up front. After accepting, each player picks **Rock**, **Paper**, or **Scissors** privately. Winner takes `bet × 2`; ties refund both bets.

For the solo version against the bot, see [`/rps`](../casino/rps.md).

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/rps-multiplayer [opponent] [bet]`

## Examples

`/rps-multiplayer @username 100k`
`/rps-multiplayer @username 5m`
`/rps-multiplayer @username max`

## Match flow

1. Challenge sent - opponent has 30 seconds to **Accept** or **Decline**.
2. Both wallets are checked for the bet amount before the challenge can fire.
3. After acceptance, both players pick their move via private buttons.
4. Moves revealed simultaneously.
5. Winner takes `bet × 2`; tie = both refunded.

## Outcomes

| Your move | Opponent's move | Result |
|---|---|---|
| Rock | Scissors | Win |
| Paper | Rock | Win |
| Scissors | Paper | Win |
| Same as opponent | - | Tie (refund) |
| Rock | Paper | Loss |
| Paper | Scissors | Loss |
| Scissors | Rock | Loss |

## Notes

- **Cooldown:** 4 seconds.
- **Min bet:** $10,000.
- **No max bet cap** - `max` confirms before locking in your full balance.
- Both players' wallets must cover the bet before the challenge sends.
- Each player can only be in one Rps-Multiplayer game at a time.
- For the solo version, see [`/rps`](../casino/rps.md).
