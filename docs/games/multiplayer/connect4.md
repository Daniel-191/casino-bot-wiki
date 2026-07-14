# /connect4

Classic 7-column Connect 4 against another player. First to line up four discs vertically, horizontally, or diagonally wins the pot.

## Description

Standard Connect 4 played in Discord. Each player drops a disc into one of 7 columns; gravity pulls it to the lowest empty row. First to make a line of 4 takes the bet.

You can play **for fun** (no money) by leaving the bet at `0`, or stake real money against your opponent.

## Required Fields

- **opponent** - Discord member to challenge.

## Optional Fields

- **bet** - Amount to wager (defaults to `0` for a no-money game). Accepts `k`/`m`/`b`/`t` shorthand or `min`/`max`/`half`.

## Usage

`/connect4 [opponent] [bet]`

## Examples

`/connect4 @username` - friendly match, no money
`/connect4 @username 100k`
`/connect4 @username max`

## Match flow

1. Challenge sent - opponent has 30 seconds to accept.
2. Players alternate dropping discs via column buttons.
3. First to line up 4 wins; full board with no winner = draw, bet refunded.

## Notes

- **Cooldown:** 3 seconds.
- **Min bet (if betting):** $10,000.
- **No max bet cap** - set `bet: max` to wager everything (a confirmation prompt appears).
- Both players must have enough money to cover the bet.
- Each player can only be in one game at a time.
- For other free 1v1 board games, see [`/tic-tac-toe`](tictactoe.md), [`/battleship`](battleship.md), or `/chess`.
