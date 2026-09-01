# /leaderboards gambling

The top gamblers for any casino game, by profit, losses or net balance.

## Description

Ranks players using the same records as [`/stats`](stats.md): every casino and betting game tracks how much you have won and how much you have lost. Pick a game to see who is on top of it, or leave the game empty to rank players across all games combined.

The game list is built from live data, so the autocomplete only ever offers games that actually have recorded stats.

## Optional Fields

- **game** - Casino game to rank. Autocompletes from the games players have recorded stats for, plus `All Games` (the default) which combines every game.
- **category** - What to rank by:
    - `net` (default) - Profit minus losses, best to worst.
    - `profit` - Total winnings only.
    - `losses` - Total losses only, biggest loser first.
- **scope** - Which players to include:
    - `global` (default) - Every Paradise Bot user, everywhere.
    - `server` - Only members of the current server.

## Usage

`/leaderboards gambling [game] [category] [scope]`

## Examples

`/leaderboards gambling`
`/leaderboards gambling game:blackjack`
`/leaderboards gambling game:slots category:losses`
`/leaderboards gambling category:profit scope:server`

## Notes

- Cooldown: **10 seconds**.
- Shows the top **10** players; results are cached for **2 minutes**, so rankings are not real time.
- On the global leaderboard, if you are outside the top 10 your own rank is added as a "Your Standing" field.
- Players with a value of exactly $0 for the chosen category are left out.
- For net gambling profit over a time window (24 hours, week, month) rather than per game, use `/leaderboards winners-losers`.
- For ranking by wealth instead of game results, use [`/leaderboard`](leaderboard.md).
