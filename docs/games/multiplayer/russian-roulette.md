# /russian-roulette

Group elimination shootout. Players take turns pulling the trigger - survive long enough and you take the entire pot.

## Description

You start a lobby in your channel with an entry fee. Other players join by clicking. Once the host starts the game (or autostart fires), each round the bot picks a player at random to "pull the trigger." Eliminated players are out; last one standing wins the pot.

## Required Fields

- **entry_fee** - Buy-in amount each player pays.

## Optional Fields

- **max_players** - Cap the number of players (default `0` = unlimited).
- **autostart** - Auto-start the game when the lobby timer ends if minimum players are met (default `false`).
- **min_autostart_players** - Minimum players required to autostart (default `2`, must be 2+).

## Usage

`/russian-roulette [entry_fee] [max_players] [autostart] [min_autostart_players]`

## Examples

`/russian-roulette 100k`
`/russian-roulette 1m max_players:6 autostart:true`
`/russian-roulette 5m max_players:0 autostart:true min_autostart_players:3`

## Lobby flow

1. Host runs the command - entry fee deducted, lobby embed posted.
2. Other players see **Join** / **Leave** / **Start** / **Cancel** buttons.
3. Lobby auto-cleans after **5 minutes** of inactivity.
4. Host clicks **Start** when ready (or autostart fires).
5. Bot rolls for each round, eliminates players one-by-one, posts the survivor as the pot winner.

## Pot mechanics

- Each player who joins pays `entry_fee` (deducted up-front).
- **Winner takes** the full pot: `entry_fee × number of joiners`.
- If the lobby is canceled, all entry fees are refunded.

## Notes

- **Cooldown:** 4 seconds (host).
- **Min entry fee:** $10,000.
- **No max bet cap.**
- **Only one Russian Roulette per channel** at a time.
- See [`/russian-roulette-stats`](../../economy/money-management/stats.md) for personal kill/survive stats (run `/russian-roulette-stats` directly).
- For 1v1 nerve games, see [`/buckshot play`](buckshot.md) instead - shorter and more strategic.
