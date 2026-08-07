# Fishing

Cast a line at one of 17 locations, catch fish ranging from Common to Mythical, and level up your rod for bigger payouts. Fishing is the **active grind** counterpart to mining and pets - the highest earnings per hour played in the bot, in exchange for being entirely hands-on.

## Core loop

1. **`/fish`** casts your line at your current location.
2. The bot rolls a fish from that location's pool, weighted by rarity.
3. Sell value goes straight to your wallet; XP applies toward level-up.
4. Level up to unlock new locations and stronger rods.
5. Higher rod tier = more money, more XP, faster cooldown, better rare-fish chances.

## Commands

| Command | What it does |
|---|---|
| [`/fish`](fish.md) | Cast a line - main fishing action |
| [`/fish-stats`](fish-stats.md) | Lifetime fishing stats and biggest catches |

The fishing **shop** (rod purchases) is built into the `/fish` interface - no separate command.

## Fish rarities

Catch rate is rolled per cast:

| Rarity | Base catch rate | Color |
|---|---|---|
| ⚪ **Common** | 60% | Light grey |
| 🟢 **Uncommon** | 25% | Green |
| 🔵 **Rare** | 10% | Blue |
| 🟣 **Epic** | 3.9% | Purple |
| 🟡 **Legendary** | 1% | Gold |
| 🔴 **Mythical** | 0.1% | Red |

Rod **rare-fish bonus** multiplies legendary/mythical chances.

## Locations (17 total)

Zones from **Eternity Rift** onward carry an **XP multiplier** on top of the
standard per-zone bonus. Per-catch XP is capped by the rarity table, so without
it XP income would flatline past level 200 while the XP needed per level kept
climbing.

| Location | Level | XP mult | Description |
|---|---|---|---|
| 🌿 **Beginner's Pond** | 1 | 1.0x | Tiny Fish, Bass, Catfish, Golden Carp |
| 💧 **Mountain Creek** | 5 | 1.0x | Brook Trout, Rainbow Fish, Crystal Fish |
| 🌊 **Rushing River** | 10 | 1.0x | Salmon, Sturgeon, River Dragon |
| 🏖️ **Mystic Lake** | 15 | 1.0x | Lake Bass, Giant Carp, Lake Monster, Ancient Fish |
| 🥬 **Murky Swamp** | 25 | 1.0x | Mudfish, Swamp Eel, Bog Beast, Swamp Spirit |
| 🌊 **Deep Ocean** | 35 | 1.0x | Tuna, Swordfish, Great White, Giant Squid |
| 🐠 **Coral Reef** | 45 | 1.0x | Tropical Fish, Reef Guardian, Ancient Turtle, Coral Spirit |
| 🌌 **The Abyss** | 60 | 1.0x | Anglerfish, Abyssal Horror, Leviathan, Void Beast |
| ✨ **Void Realm** | 75 | 1.0x | Void Fish, Reality Bender, Cosmic Horror |
| 🌟 **Celestial Waters** | 100 | 1.0x | Star Swimmer, Divine Beast, Celestial Dragon |
| 🔬 **Quantum Stream** | 125 | 1.0x | Probability Fish, Schrodinger's Catch, Quantum Anomaly |
| 🌋 **Primordial Depths** | 150 | 1.0x | Primeval Eel, Epoch Fish, Genesis Swimmer, Primordial Leviathan |
| 🌠 **Cosmic Nexus** | 200 | 1.0x | Cosmic Weaver, Reality Fragment, Nexus Guardian, Omniversal Being |
| ⌛ **Eternity Rift** | 250 | 1.35x | Hourglass Ray, Age Devourer, Forgotten Tide, The Long Now |
| 🕯️ **Ashen Abyss** | 300 | 1.80x | Cinder Eel, Emberwake Serpent, Last Light, Heat Death |
| 🕳️ **Null Sea** | 400 | 2.50x | Absence, Unwritten, Silent Fathom, Nothing At All (all Mythical) |
| 🫧 **The Source** | 500 | 3.40x | First Minnow, Wellspring Koi, The Original, What Swam Before (all Mythical) |

## Fishing rods (23 tiers)

Buyable in the `/fish` rod shop. Tiers land every 25 levels from 100 up, so there is a concrete upgrade roughly every 9-29 hours of active fishing rather than a 200+ hour wait between the top tiers.

Rods are named on a single material ladder - wood, base metal, precious metal, gemstone, then the fictional metals - so any two rods can be ranked by name alone. The old fantasy names (Basic through Transcendent) were retired in the rename; every rod kept its exact stats, price and level requirement, and owned rods were converted automatically.

| Rod | Level | Price | Money | XP | Cooldown | Rare |
|---|---|---|---|---|---|---|
| 🪵 **Wooden** | 1 | Free | 1.00× | 1.00× | 1.00× | 1.00× |
| 🎋 **Bamboo** | 5 | $2B | 1.05× | 1.03× | 0.98× | 1.02× |
| 🌲 **Pine** | 15 | $7.5B | 1.12× | 1.08× | 0.92× | 1.06× |
| 🌳 **Oak** | 30 | $20B | 1.20× | 1.15× | 0.85× | 1.12× |
| 🟠 **Copper** | 50 | $50B | 1.30× | 1.25× | 0.75× | 1.20× |
| 🥉 **Bronze** | 75 | $100B | 1.35× | 1.25× | 0.75× | 1.20× |
| ⚙️ **Iron** | 100 | $300B | 1.42× | 1.30× | 0.65× | 1.28× |
| 🔩 **Steel** | 125 | $600B | 1.46× | 1.32× | 0.63× | 1.31× |
| 🛡️ **Titanium** | 150 | $1T | 1.50× | 1.35× | 0.60× | 1.35× |
| 🥈 **Silver** | 175 | $2T | 1.55× | 1.40× | 0.55× | 1.42× |
| 🥇 **Gold** | 200 | $3.5T | 1.60× | 1.45× | 0.50× | 1.50× |
| 💠 **Platinum** | 225 | $7T | 1.72× | 1.52× | 0.47× | 1.60× |
| 🟣 **Amethyst** | 250 | $15T | 1.85× | 1.60× | 0.45× | 1.70× |
| 🟡 **Topaz** | 275 | $28T | 2.00× | 1.67× | 0.42× | 1.85× |
| 🟩 **Emerald** | 300 | $50T | 2.20× | 1.75× | 0.40× | 2.00× |
| 🔷 **Sapphire** | 325 | $80T | 2.32× | 1.81× | 0.39× | 2.11× |
| 🔴 **Ruby** | 350 | $120T | 2.46× | 1.87× | 0.38× | 2.24× |
| 💎 **Diamond** | 375 | $165T | 2.60× | 1.93× | 0.36× | 2.37× |
| ⬛ **Obsidian** | 400 | $200T | 2.75× | 2.00× | 0.35× | 2.50× |
| 🔹 **Mythril** | 425 | $320T | 2.92× | 2.06× | 0.32× | 2.62× |
| ⚔️ **Adamant** | 450 | $480T | 3.10× | 2.12× | 0.30× | 2.74× |
| 🟤 **Orichalcum** | 475 | $700T | 3.29× | 2.18× | 0.27× | 2.87× |
| ✴️ **Eternium** | 500 | $1Qa | 3.50× | 2.25× | 0.25× | 3.00× |

Rods can be **sold back at 60%** of purchase price.

## Notes

- **Cooldown:** base 2.5 seconds between casts, modified down by rod cooldown reduction and patron tier.
- One equipped rod at a time; switch via the `/fish` rod menu.
- Fishing events fire occasionally and buff catch rates / payouts.
- Equal-payout alternative: [Pets](../pets/index.md). Different pacing - fishing is fully hands-on, pets need periodic care.
- **Fishing vs farming:** fishing earns vastly more per hour *played*, because every
  cast is manual. Farming wins on profit per minute of *attention* - you plant and
  come back much later. They are not meant to be compared on the same axis.
