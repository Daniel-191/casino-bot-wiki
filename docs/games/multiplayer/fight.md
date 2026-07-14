# /fight

Turn-based weapon duel - pick from 8 weapons, swing for damage, drop your opponent's HP to 0 to win the pot.

## Description

Both players start at **100 HP**. Each picks one of 8 weapons (each with its own damage range, accuracy, and crit chance). Then you alternate turns - pick a move (every weapon has its own move list), the bot rolls accuracy and damage, and the result is shown.

First to hit 0 HP loses the pot.

## Required Fields

- **opponent** - Discord member to challenge.
- **bet** - Amount each player puts up.

## Usage

`/fight [opponent] [bet]`

## Examples

`/fight @username 100k`
`/fight @username 5m`
`/fight @username max`

## Weapons

| Weapon | Damage | Accuracy | Crit % | Notes |
|---|---|---|---|---|
| ⚔️ Sword | 20–34 | 85% | 20% | Balanced, consistent |
| 🪓 Battle Axe | 25–39 | 75% | 25% | Heavy hitter, less accurate |
| 🔱 Spear | 15–29 | 90% | 15% | Reliable but lower damage |
| 🏹 Bow | 20–44 | 80% | 30% | High variance |
| 🥿 Mom's Slipper | 12–25 | 85% | 25% | Surprisingly competitive |
| 🗡️ Dagger | 8–18 | 95% | 40% | Crit-fishing build |
| 🪄 Magic Staff | 15–19 | 100% | 10% | **Always hits**; one move heals 15 HP |
| 🛡️ Sword + Shield | 12–24 | 80% | 15% | Tank-style, lower damage |

Both players also see a **help embed** before the duel showing all weapon stats.

## Combat math

- **Accuracy check** runs first - a miss does 0 damage.
- **Crit roll** doubles damage on success.
- **Damage** is uniform-random within the weapon's range.
- Some moves modify accuracy/damage temporarily (per-weapon move lists).

## Notes

- **Cooldown:** 4 seconds (with internal rate limiter on top - spam protection).
- **Min bet:** $10,000.
- **No max bet cap** - `max` confirms before locking in your full balance.
- **Only one fight per channel** at a time.
- **HP starts at 100** for both fighters; first to 0 loses.
- For pure-luck 1v1s, see [`/coinflip-duel`](coinflip-duel.md), [`/diceduel`](diceduel.md), or [`/russian-roulette`](russian-roulette.md).
