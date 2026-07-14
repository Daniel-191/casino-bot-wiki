# /buckshot

Buckshot Roulette - 1v1 shotgun standoff with random live/blank shells, items, and bluffing. Reduce your opponent to 0 HP to win the pot.

## Description

`/buckshot` is a `SlashCommandGroup` with three subcommands:

| Subcommand | Description | Cooldown |
|---|---|---|
| `/buckshot play [opponent] [entry_fee]` | Challenge another player | 5s |
| `/buckshot stats [@user]` | View win/loss record + rank | 3s |
| `/buckshot help` | Built-in rules embed | 3s |

Two players, one shotgun. Each round, the chamber is loaded with a random mix of 🔴 **live** and ⚫ **blank** shells. **Counts are public; order is hidden.** On your turn you choose to **shoot the opponent** or **shoot yourself** (if you blank yourself, you keep your turn). Items let you peek, skip, eject, or buff damage.

## /buckshot play

`/buckshot play [opponent] [entry_fee]`

- **opponent** - Discord member to challenge.
- **entry_fee** - Wager amount each player puts up.

### Examples

`/buckshot play @username 100k`
`/buckshot play @username 5m`
`/buckshot play @username max`

## Match flow

1. Challenger runs the command; opponent has 60 seconds to accept.
2. Both players locked in; pot = `entry_fee × 2`.
3. Each round the chamber is loaded with a fresh mix of live/blank shells (counts shown).
4. Players alternate turns (45 seconds per turn):
   - **Shoot Opponent** - fires the next shell at them.
   - **Shoot Self** - fires at you. **Blank** = no damage, keep turn. **Live** = take damage, turn passes.
   - **Use Item** - burn a held item before shooting.
5. First player to **0 HP** loses the pot.

## Items (random per round)

- **Magnifying Glass** - peek at the next shell.
- **Cigarettes** - restore 1 HP.
- **Beer** - eject the next shell (skip it).
- **Saw** - next shot deals **double damage** (live only).
- **Handcuffs** - opponent skips their next turn.

(Exact item drops vary per round.)

## Stats & ranks (`/buckshot stats`)

Tracks: games played, won, lost, current streak, longest streak, win rate.

Rank tiers:

| Rank | Requirement |
|---|---|
| **Master** | 75%+ win rate, 10+ games |
| **Expert** | 60%+ win rate, 5+ games |
| **Skilled** | 45%+ win rate, 3+ games |
| **Rookie** | 1+ games |
| **Unranked** | 0 games |

## Notes

- **Min bet:** $10,000.
- **No max bet cap.**
- **Each player can only be in one Buckshot game at a time.**
- The 45-second turn timer is strict - sit too long and your turn passes.
- For other 1v1 nerve games, see [`/russian-roulette`](russian-roulette.md) (group) or [`/fight`](fight.md) (weapon-based).

