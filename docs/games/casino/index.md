# Casino Games

Single-player gambling against the house - table games, slots, dice, and arcade-style multipliers.

## Quick reference

| Command | Type | Cooldown | Notes |
|---|---|---|---|
| [`/baccarat`](baccarat.md) | Card | 5s | Player / Banker / Tie |
| [`/blackjack`](blackjack.md) | Card | 2s | 3:2 BJ payout, splits, double |
| [`/poker`](poker.md) | Card | 3s | 6-card draw vs dealer |
| [`/coinflip`](coinflip.md) | Coin | 4s | Heads or tails, 2× on win |
| [`/dice`](dice.md) | Dice | 4s | Pick 1–6, 3× on win |
| [`/crash`](crash.md) | Multiplier | 5s | Cash out before it crashes |
| [`/tower`](tower.md) | Climb | 3s | Stack blocks, cash out |
| [`/minesweeper`](minesweeper.md) | Grid | 7s | 4×5 board, 4 mines |
| [`/plinko`](plinko.md) | Drop | 4s | $1K per ball, 0.1× to 100× |
| [`/slots`](slots.md) | Slots | 4s | 3-reel, up to 50× jackpot |
| [`/roulette`](roulette.md) | Wheel | 3s | American roulette (0 + 00) |
| [`/wheel-of-fortune`](wheel-of-fortune.md) | Wheel | 4s | 8 segments, dynamic jackpot |
| [`/horse-race`](horse-race.md) | Race | 5s | Pick 1 of 5 horses, 2.5×–6× |
| [`/sportsbet`](sportsbet.md) | Real sports | 10s | Live odds from real leagues |
| `/uncrossable` | Cross | 5s | 20 lanes, 91% per-lane survival |
| [`/rps`](rps.md) | RPS | 4s | Best-of-3 vs bot |

## Common rules

- **Bet shortcuts:** All games accept `k`/`m`/`b`/`t` shorthand and `min`/`max`/`half` shortcuts. See [Money Management](../../economy/money-management/index.md#amount-shortcuts).
- **Default min bet:** $10,000.
- **Default max bet:** $1 trillion (some games override - `/coinflip` allows up to $50T).
- **One game at a time:** You can only have **one active casino game** at a time. Finish (or wait 3 minutes for cleanup) before starting another.
- **Patreon cooldown reduction:** Most games reduce their cooldown by up to 35% with Patreon. See the [Patreon page](../../features/store/index.md).

## Tips

!!! tip "Play smart"
    - Set a session budget before you start.
    - Bigger bets mean bigger swings - use `min`/`half` shortcuts to pace yourself.

## Related

- [Multiplayer Games](../multiplayer/index.md) - Player-vs-player gambling
- [Heists](../heists/index.md) - Co-op big-money runs
- [Stats](../../economy/money-management/stats.md) - Track per-game profit/loss
