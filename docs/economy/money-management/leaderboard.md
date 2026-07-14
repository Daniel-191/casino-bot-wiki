# /leaderboard

The top 100 richest players, ranked by net worth.

## Description

Shows a paginated leaderboard of the top 100 richest players, either globally or restricted to this server. Net worth is wallet + bank + property value, so just hoarding money isn't the only path to the top.

The footer shows your own rank, even if you're outside the top 100. The global top 10 also receive a special Discord role automatically (where the role exists in the server).

## Optional Fields

- **scope** - Which leaderboard to view:
    - `global` (default) - Every Paradise Bot user, everywhere.
    - `server` - Only members of the current server.

## Usage

`/leaderboard [scope]`

## Examples

`/leaderboard`
`/leaderboard global`
`/leaderboard server`

## Notes

- Cooldown: **10 seconds** (longer than other balance commands because the leaderboard is heavier to compute).
- Results are cached for performance; rankings update every few minutes, not in real time.
- The "Top 10" Discord role is granted/removed automatically based on the **global** leaderboard.
- Your rank is shown in the footer regardless of whether you appear in the top 100.
