# Multiplayer Games

Player-vs-player and group games. Some are 1v1 duels, some are channel-wide free-for-alls. Most involve real money pots.

## Quick reference

| Command | Type | Players | Cooldown |
|---|---|---|---|
| [`/battleship`](battleship.md) | 1v1 board | 2 | 10s |
| [`/connect4`](connect4.md) | 1v1 board | 2 | 3s |
| [`/tic-tac-toe`](tictactoe.md) | 1v1 board | 2 | 4s |
| [`/wordle duel`](wordle.md) | 1v1 puzzle | 2 | 5s |
| [`/fight`](fight.md) | 1v1 turn-based combat | 2 | 4s |
| [`/coinflip-duel`](coinflip-duel.md) | 1v1 chance | 2 | 4s |
| [`/diceduel`](diceduel.md) | 1v1 chance | 2 | 4s |
| [`/rps-multiplayer`](rps-multiplayer.md) | 1v1 RPS | 2 | 4s |
| [`/buckshot play`](buckshot.md) | 1v1 strategy | 2 | 5s |
| [`/simple-buckshot`](simple-buckshot.md) | Group battle royale | 2+ | 4s |
| [`/russian-roulette`](russian-roulette.md) | Group elimination | 2+ | 4s |
| [`/multiplayer_dice`](multiplayer-dice.md) | Group elimination | 2+ | - |
| [`/murdermystery`](murdermystery.md) | Social deduction | 4–15 | 5s |
| [`/multiblackjack`](multiblackjack.md) | Multi-table casino | 1–7 | 5s |
| [`/heist` & `/solo-heist`](../heists/index.md) | Group robbery | 1–50 | 10m |

## Common rules

- **Bet shortcuts:** All multiplayer games accept `k`/`m`/`b`/`t` shorthand and `min`/`max`/`half` shortcuts. Most have **no max bet cap** - you can bet your entire balance.
- **Min bet:** $10,000 unless overridden.
- **Both players checked:** the opponent's wallet must cover the bet too.
- **One game at a time:** you can't be in two casino/multiplayer games simultaneously.
- **Bets are deducted up-front** and the winner gets the full pot (or shared, in group games).
- **Challenge timeout:** most 1v1 challenges expire after **30–60 seconds** if the opponent doesn't accept.

## Categories

### Skill games
[`/battleship`](battleship.md), [`/connect4`](connect4.md), [`/tic-tac-toe`](tictactoe.md), [`/wordle duel`](wordle.md) - pure mechanical skill, no luck.

### Combat
[`/fight`](fight.md), [`/buckshot play`](buckshot.md), [`/simple-buckshot`](simple-buckshot.md) - turn-based with weapon/item choices.

### Pure chance
[`/coinflip-duel`](coinflip-duel.md), [`/diceduel`](diceduel.md), [`/russian-roulette`](russian-roulette.md) - RNG decides.

### Mixed
[`/rps-multiplayer`](rps-multiplayer.md), `/multidice`, [`/multiplayer_dice`](multiplayer-dice.md) - some skill, mostly luck.

### Group
[`/murdermystery`](murdermystery.md), [`/multiblackjack`](multiblackjack.md), [Heists](../heists/index.md) - 3+ players in one lobby.

## Notes

- For solo casino games, see the [Casino Games index](../casino/index.md).
- For multiplayer **stats**, use [`/stats`](../../economy/money-management/stats.md) with the appropriate game name.
- Disputes/refunds: if a multiplayer game errors out, the bet is refunded automatically (or contact support if not - see [Contact](../../support/contact.md)).
