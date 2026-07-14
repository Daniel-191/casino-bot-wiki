# /wordle

Guess a 5-letter word in 6 tries. Solo, daily, or duel another player for a pot.

## Description

Paradise Bot's Wordle is a `SlashCommandGroup` - `/wordle <subcommand>` - with multiple game modes:

- **Solo** - practice against the bot, no money.
- **Daily** - one shared puzzle per day, with a daily leaderboard.
- **Duel** - head-to-head against another player, optional money on the line.
- **Stats / leaderboard** - view records.

Letter feedback is the standard Wordle palette: 🟩 right letter right position, 🟨 right letter wrong position, ⬛ wrong letter.

## Subcommands

| Subcommand | Description | Cooldown |
|---|---|---|
| `/wordle solo` | Solo practice game | 3s |
| `/wordle daily` | Today's daily puzzle (shared word) | 5s |
| `/wordle duel @user [bet]` | Challenge another player | 5s |
| `/wordle daily-leaderboard` | Today's daily-puzzle ranks | 5s |
| `/wordle daily-stats [@user]` | Daily Wordle stats for a user | 5s |
| `/wordle stats [@user]` | Overall Wordle stats for a user | 5s |
| `/wordle leaderboard` | Global Wordle leaderboard | 5s |

## /wordle duel

`/wordle duel [opponent] [bet]`

- **opponent** - Discord member to challenge.
- **bet** *(optional, default `0`)* - Amount each player puts up. `0` for a friendly match with no money.

Both players guess the same word; first to solve in fewer guesses wins the pot. Same number of guesses = the player who solved first wins.

### Examples

`/wordle duel @username` - friendly duel
`/wordle duel @username 100k`
`/wordle duel @username max`

## Daily mode

- One puzzle per day, same word for everyone.
- Builds a **daily streak** counter (consecutive days solved).
- Top solvers are listed on `/wordle daily-leaderboard` after they finish.

## Stats tracked

Per user (via `/wordle stats`):

- Games played, win rate, current win streak, best win streak
- Best guess count (lowest), average guesses on wins
- Total wagered, total won, total lost
- Daily mode: solve rate, fastest solve time, daily streak, best daily streak

## Notes

- **Min bet (duel with bet > 0):** $10,000.
- **No max bet cap** - `max` confirms before locking in your full balance.
- Each player can only be in one Wordle game at a time.
- Daily mode resets at midnight UTC.
- The word list is the standard Wordle answer pool.
