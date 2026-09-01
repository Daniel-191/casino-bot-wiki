# /russian-roulette

Group elimination shootout. Players take turns pulling the trigger - survive long enough and you take the entire pot.

## Description

You start a lobby in your channel with an entry fee. Other players join by clicking. Once the host starts the game - or the 5-minute lobby timer runs out, which always starts it - each round the bot picks a player at random to "pull the trigger." Eliminated players are out; last one standing wins the pot.

## Required Fields

- **entry_fee** - Buy-in amount each player pays.

## Optional Fields

- **max_players** - Cap the number of players (default `0` = unlimited).

## Usage

`/russian-roulette [entry_fee] [max_players]`

## Examples

`/russian-roulette 100k`
`/russian-roulette 1m max_players:6`
`/russian-roulette 5m max_players:0`

## Lobby flow

1. Host runs the command - entry fee deducted, lobby embed posted.
2. Other players see **Join** / **Leave** / **Start** / **Cancel** buttons.
3. The lobby runs for **5 minutes**.
4. Host clicks **Start** when ready; otherwise the game starts itself the moment the timer ends, as long as at least **2** players joined. Below that everyone is refunded.
5. Bot rolls for each round, eliminates players one-by-one, posts the survivor as the pot winner.

## Pot mechanics

- Each player who joins pays `entry_fee` (deducted up-front).
- **Winner takes** the full pot: `entry_fee × number of joiners`.
- If the lobby is canceled, all entry fees are refunded.

## Notes

- **Cooldown:** 4 seconds (host).
- **Min entry fee:** $10,000.
- **No max bet cap.**
- **Only one Russian Roulette per channel** at a time. If a game stalls, the channel frees itself automatically and everyone is refunded.
- See [`/russian-roulette-stats`](../../economy/money-management/stats.md) for personal kill/survive stats (run `/russian-roulette-stats` directly).
- For 1v1 nerve games, see [`/buckshot play`](buckshot.md) instead - shorter and more strategic.
