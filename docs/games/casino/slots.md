# /slots

Classic 3-reel slots - match three symbols across the line for multiplier payouts up to 50×.

## Description

You bet, the reels spin, and three symbols are drawn. Match all three for a payout based on the symbol; mismatches lose the bet.

The game tracks your **win/loss streaks**, **total spin count**, and **time since last play** to apply mercy and re-engagement bonuses.

## Required Fields

- **bet** - Amount to wager.

## Usage

`/slots [bet]`

## Examples

`/slots 100k`
`/slots 5m`
`/slots max`

## Symbol payouts

| Symbol | Multiplier |
|---|---|
| 7️⃣ Seven | 50× (jackpot) |
| 🎯 Bar | 25× |
| 🍉 Watermelon | 15× |
| 💎 Diamond | 8× |
| 🍌 Banana | 4× |
| 🍇 Plum | 2.5× |
| 🍒 Cherry | 1.5× |

A 50× hit on a $100K bet pays $5M. Cherry is the most common winning symbol.

## Win mechanics

- **Base win rate:** ~12% per spin (varies with player history).
- **New player bonus:** +5% win rate for the first 15 spins.
- **First win guarantee:** 7th spin auto-wins on Cherry if you've never won.
- **Mercy win:** triggers after 10 losses in a row (small Cherry/Plum win).
- **Welcome back:** auto-win after 4+ days away from the game.
- **Cooldown trigger:** after 3 wins in a row, the next spin is forced to lose to dampen runaway streaks.
- **Veteran tax:** symbol probabilities slightly worsen after 300 spins.

## Notes

- **Cooldown:** 4 seconds.
- A short spinning animation plays before the result.
- Wins ≥ 10× your bet trigger a "BIG WIN" embed; ≥ 20× broadcasts to the channel.
- VIP/Premium/Donor server roles get a **+10% bonus** on any win.
- Stats are tracked per-player (total spins, wagered, won, streaks) and used to balance future spins.
