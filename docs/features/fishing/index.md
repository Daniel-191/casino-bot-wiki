# Fishing

Cast a line at one of 13 locations, catch fish ranging from Common to Mythical, and level up your rod for bigger payouts. Fishing is the **passive grind** counterpart to mining and pets - same earning potential, different gameplay rhythm.

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

## Locations (13 total)

| Location | Level | Description |
|---|---|---|
| 🌿 **Beginner's Pond** | 1 | Tiny Fish, Bass, Catfish, Golden Carp |
| 💧 **Mountain Creek** | 5 | Brook Trout, Rainbow Fish, Crystal Fish |
| 🌊 **Rushing River** | 10 | Salmon, Sturgeon, River Dragon |
| 🏖️ **Mystic Lake** | 15 | Lake Bass, Giant Carp, Lake Monster, Ancient Fish |
| 🥬 **Murky Swamp** | 25 | Mudfish, Swamp Eel, Bog Beast, Swamp Spirit |
| 🌊 **Deep Ocean** | 35 | Tuna, Swordfish, Great White, Giant Squid |
| 🐠 **Coral Reef** | 45 | Tropical Fish, Reef Guardian, Ancient Turtle, Coral Spirit |
| 🌌 **The Abyss** | 60 | Anglerfish, Abyssal Horror, Leviathan, Void Beast |
| ✨ **Void Realm** | 75 | Void Fish, Reality Bender, Cosmic Horror |
| 🌟 **Celestial Waters** | 100 | Star Swimmer (Epic), Reality Bender (Legendary) |
| 🔬 **Quantum Stream** | 125 | High-level cosmic fish |
| 🌋 **Primordial Depths** | 150 | Ancient creation-era beasts |
| 🌠 **Cosmic Nexus** | 200 | Endgame |

## Fishing rods (13 tiers)

Buyable in the `/fish` rod shop:

| Rod | Level | Price | Money | XP | Cooldown | Rare |
|---|---|---|---|---|---|---|
| 🎣 **Basic** | 1 | Free | 1.0× | 1.0× | 1.0× | 1.0× |
| 🎋 **Bamboo** | 5 | $2B | 1.05× | 1.03× | 0.98× | 1.02× |
| ⚡ **Carbon Fiber** | 15 | $7.5B | 1.12× | 1.08× | 0.92× | 1.06× |
| 🌟 **Enchanted** | 30 | $20B | 1.20× | 1.15× | 0.85× | 1.12× |
| 👑 **Legendary** | 50 | $50B | 1.30× | 1.25× | 0.75× | 1.20× |
| 🔮 **Mythical** | 75 | $100B | 1.35× | 1.25× | 0.75× | 1.20× |
| ✨ **Celestial** | 100 | $300B | 1.42× | 1.30× | 0.65× | 1.28× |
| 🌌 **Quantum** | 150 | $1T | 1.50× | 1.35× | 0.60× | 1.35× |
| 🌀 **Omniversal** | 200 | $3.5T | 1.60× | 1.45× | 0.50× | 1.50× |
| 🌋 **Primordial** | 250 | $15T | 1.85× | 1.60× | 0.45× | 1.70× |
| ⚡ **Genesis** | 300 | $50T | 2.20× | 1.75× | 0.40× | 2.00× |
| ♾️ **Infinite** | 400 | $200T | 2.75× | 2.00× | 0.35× | 2.50× |
| 🔆 **Transcendent** | 500 | $1Qa | 3.50× | 2.25× | 0.25× | 3.00× |

Rods can be **sold back at 60%** of purchase price.

## Notes

- **Cooldown:** base 4 seconds (slash command), modified down by rod cooldown reduction.
- One equipped rod at a time; switch via the `/fish` rod menu.
- Fishing events fire occasionally and buff catch rates / payouts.
- Equal-payout alternative: [Pets](../pets/index.md). Different pacing - fishing is more passive, pets need active care.
