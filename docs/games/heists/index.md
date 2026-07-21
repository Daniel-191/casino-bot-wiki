# Heists

Big-money cooperative jobs (and a faster solo variant). Pick a location, set the entry fee, recruit a crew, and roll the dice on a payout multiplier.

## How heists work

Two modes:

- [`/heist`](heist.md) - **Multiplayer.** Host a job in a channel, players join with the same entry fee, the host picks a location, then the bot rolls success and splits the pot.
- [`/solo-heist`](solo-heist.md) - **Solo.** Three-phase one-player heist. Higher base success (68%), smaller payout multiplier (1.20×–1.40×), shorter cooldown.

Both modes count toward the **same daily heist limit** and share the same cooldown timer.

## Daily limits

Every player has a daily cap on how many heists they can run (across multiplayer + solo combined):

| Tier | Daily limit |
|---|---|
| Non-Patreon | 4 |
| Donator / Chill / Epic (T1–T3) | 6 |
| Super / Mega (T4–T5) | 8 |
| Ultimate / Crazy (T6–T7) | 10 |
| Godly (T8) | 15 |

**Vote bonus:** voting on **both Top.gg and DBL within 24 hours** adds **+2 daily heists**, taking a free user up to 6 and Godly to 17.

## Tax on winnings

A portion of every winning heist is taxed and goes to the **community lottery pool**:

| Tier | Tax rate |
|---|---|
| Non-Patreon | 20% |
| Donator / Chill / Epic (T1–T3) | 15% |
| Super / Mega (T4–T5) | 5% |
| Ultimate / Crazy / Godly (T6–T8) | 0% |

## Cooldowns

- **Multiplayer heist:** 10-minute cooldown after the heist resolves (win or lose).
- **Solo heist:** 15 minutes on win, 10 minutes on loss.
- The two share a single timer - running a multiplayer heist locks out solo and vice versa.

## Locations

Multiplayer heists pick from 8 locations. Each has its own player range, base success rate, and reward multiplier. See [`/heist`](heist.md#locations) for the full table.

## Commands

- [`/heist`](heist.md) - Host a multiplayer heist
- [`/solo-heist`](solo-heist.md) - Run a heist alone
- [`/heist-stats`](heist-stats.md) - Your heist history (wins, losses, profit, daily progress)

## The Weekly Major Heist

Once a week (Saturdays), the **Weekly Major Heist** runs as a community event - up to 150 players, 78% base success rate, 4.0× payout multiplier. Watch your server's announcement channel.
