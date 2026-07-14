# /battleship

⚓ 1v1 Battleship - place ships on a hidden grid, take turns firing at coordinates, sink your opponent's whole fleet to win.

## Description

You challenge another player. Both of you place ships on private boards (hidden from each other), then alternate firing at grid coordinates. Hits, misses, and sunk ships are tracked on a shared display. First to sink the enemy's entire fleet takes the pot.

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/battleship [opponent] [bet]`

## Examples

`/battleship @username 100k`
`/battleship @username 5m`

## Match flow

1. Challenge sent - opponent has limited time to accept.
2. Both players place ships privately on their boards.
3. Take turns calling shots (e.g., `B5`).
4. Bot replies "Hit", "Miss", or "Sunk!" each turn.
5. First to sink all opponent ships wins the pot (`bet × 2`).

## Notes

- **Cooldown:** 10 seconds (longest in the multiplayer set - to discourage spam).
- **Min bet:** $10,000.
- **No max bet cap** - you can wager up to your wallet balance.
- Both wallets must cover the bet to start.
- Each player can only be in **one battleship game at a time**.
- The board display includes a legend (your ships / your shots / opponent shots).
- For other 1v1 board games, see `/chess`, [`/connect4`](connect4.md), or [`/tic-tac-toe`](tictactoe.md).
