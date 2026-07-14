# /tic-tac-toe

Classic 3×3 tic-tac-toe against another player. Get three in a row to win the pot.

## Description

Standard tic-tac-toe in a Discord button grid. Players alternate placing X and O on a 3×3 board. First to get three in a row (horizontal, vertical, or diagonal) wins. Full board with no winner = draw, bets refunded.

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/tic-tac-toe [opponent] [bet]`

## Examples

`/tic-tac-toe @username 100k`
`/tic-tac-toe @username 5m`
`/tic-tac-toe @username max`

## Match flow

1. Challenge sent - opponent has 30 seconds to accept.
2. Players alternate clicking buttons on a 3×3 grid.
3. First to line up 3 wins the pot (`bet × 2`).
4. Tie = both players get their bets back.

## Notes

- **Cooldown:** 4 seconds.
- **Min bet:** $10,000.
- **No max bet cap** - set `bet: max` to wager everything (a confirmation prompt appears).
- Both wallets must cover the bet to start.
- Tic-tac-toe is solved game theory - perfect play always ends in a draw, so this is mostly a quick-money game between unfocused or beginner opponents.
- For other 1v1 board games, see [`/connect4`](connect4.md), [`/battleship`](battleship.md), `/chess`.
