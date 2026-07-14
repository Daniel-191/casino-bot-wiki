# /stats

Profit and losses across every game you've played.

## Description

Shows your gambling track record: how much you've won, how much you've lost, and your net result for each game. Without arguments, you get a paginated list of every game you've touched. Pass a specific game to drill into just that one.

A green chart icon means you're up overall on that game; red means you're down.

## Optional Fields

- **member** - Check another player's stats instead of your own.
- **game** - Show stats for a single game (autocompletes from games you've actually played).

## Usage

`/stats [member] [game]`

## Examples

`/stats`
`/stats game:blackjack`
`/stats @username`
`/stats @username game:slots`

## Notes

- Cooldown: **5 seconds**.
- Profit and losses are tracked per game, separately. Net = profit − losses.
- If a player has no recorded games yet, you'll see a "no stats found" embed.
- For ranking by total wealth instead of game results, use [`/leaderboard`](leaderboard.md).
