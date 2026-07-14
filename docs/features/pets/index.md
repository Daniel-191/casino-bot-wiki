# Pet System

Adopt a single virtual pet, keep its stats high, and level it up to earn money. Pets are an active-care progression system - feed/play/clean/rest cycles to keep your pet healthy, then put it to **work** for money that scales with level.

!!! warning "Pets can die"
    Neglect your pet for **5 days** and it dies. After that you must pay a **funeral fee** before adopting a new pet.

## Core loop

1. **Adopt** a pet from `/pets` (one pet per user).
2. **Feed**, **Play**, **Clean** to keep the four stats above 0.
3. **Rest** when energy gets low (no cooldown - you can rest anytime).
4. **Work** to earn money. With all stats 80+ you get a **3× perfect-care multiplier**.
5. Activities give **XP** - level up to scale earnings, reduce cooldowns, and unlock perks.

## Pet types

7 species you can adopt - all earn equally; the species is mostly cosmetic.

| Pet | Emoji |
|---|---|
| **Dog** | 🐕 |
| **Cat** | 🐱 |
| **Bird** | 🐦 |
| **Rabbit** | 🐰 |
| **Hamster** | 🐹 |
| **Fish** | 🐠 |
| **Unicorn** | 🦄 ✨ (special prestige cosmetic) |

Switching pets has a **1-week cooldown**. Renaming has a **2-week cooldown**.

## Stats (0–100)

Every pet has four decaying stats. Let any drop too far and your pet's effectiveness crashes - let them all stay at 0 long enough and the pet dies.

| Stat | Restored by | Notes |
|---|---|---|
| **Hunger** | Feed | Scales: +0.5 per level effectiveness |
| **Happiness** | Play | Scales: +0.4 per level |
| **Cleanliness** | Clean | Scales: +0.5 per level |
| **Energy** | Rest | Required for all other actions; +0.3 recovery per level |

## Action cooldowns

| Action | Base cooldown |
|---|---|
| **Feed** | 15 min |
| **Play** | 12 min |
| **Clean** | 18 min |
| **Work** | 30 min |
| **Rest** | None (always available) |

**Cooldown reduction:** **3% faster per level**, capped at **60% reduction** at level 20. A level-50 pet works every ~6 minutes; a level-100 pet works every ~3 minutes.

## XP and leveling

XP requirements match the fishing system exactly:

| Level range | XP per level |
|---|---|
| **1–25** | 50 → 1,250 |
| **26–50** | 1,250 → 6,250 |
| **51–75** | 6,250 → 18,750 |
| **76–100** | 18,750 → 43,750 |
| **101–200 (legendary)** | 43,750 → 268,750 |

XP sources (base values, +5% per level):

- **Feeding:** 15–35 XP
- **Playing:** 25–45 XP
- **Cleaning:** 20–40 XP
- **Working:** 35–65 XP

### Level milestones

| Level | Title |
|---|---|
| **25** | ⭐ EXPERT |
| **50** | 🏆 MASTER |
| **100** | ✨ LEGENDARY |
| **200** | Ultimate Pet |

## Earnings (work payouts)

Earnings scale dramatically with level. Stats and level multiply together:

- **Base:** scales with level.
- **Stat multiplier:** 0.3× (poor care) to **3.0× (all stats 80+)** "perfect care".
- **Level bonus:** +8% compound per level.

| Level tier | Per-work payout |
|---|---|
| **1–25** | $50K – $500K |
| **26–50** | $500K – $5M |
| **51–75** | $5M – $50M |
| **76–100** | $50M – $500M |
| **101–200** | $500M – $5B+ |

## Death & funerals

If you don't open `/pets` and care for your pet, stats decay to 0 and **after ~5 days of neglect the pet dies**. You can't adopt a new pet until you pay the **funeral fee** (shown when you next run `/pets`).

The funeral payment view appears automatically - pay and you're free to adopt again.

## Commands

- [`/pets`](pets.md) - Open the main pet interface (adopt, feed, play, work, etc.)
- [`/pet-stats`](pet-stats.md) - Detailed stats for your pet or another user's pet

## Related systems

- **[Fishing](../fishing/index.md)** - Equal-payout alternative to pets; equal time investment, different gameplay.
- **[Scratch farm boosts](../../economy/scratch/index.md)** - Don't apply to pets, only crops.
