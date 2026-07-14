# Mining

Mine ores from depth-based veins, sell them for money, level up to unlock deeper depths and stronger pickaxes. Mining is a structured grind with **18 pickaxes**, **15 depths**, perks every few levels, and 5 active abilities.

## Core loop

1. **`/mine dig`** opens an interactive 4×5 grid (5 pages = 100 spots per session).
2. Click spots to extract ores - each click rolls from the current depth's ore pool.
3. **Stronger pickaxes + higher levels = better ores, more XP, more value.**
4. Sell ores via [`/mine inventory`](inventory.md) or save **crafting ores** for upgrading your pickaxe.
5. Buy/craft a better pickaxe → switch to a deeper depth → bigger payouts.

## Commands

| Command | What it does |
|---|---|
| [`/mine dig`](dig.md) | Open the mining grid and start mining |
| [`/mine inventory`](inventory.md) | View ores, sell them, equip/craft pickaxes |
| [`/mine profile`](profile.md) | Stats, level, perks, abilities, depth switcher |
| [`/mine shop`](shop.md) | Buy pickaxes with money and consumable tools |
| [`/mine depths`](depths.md) | Browse all 15 depths and their ore pools |

## Pickaxes

18 tiers - first 6 buyable with money, then 12 craft-only end-game tiers.

| Pickaxe | Level | Price | Value | XP | Rare | Notes |
|---|---|---|---|---|---|---|
| 🪓 **Wooden** | 1 | Free | 1.0× | 1.0× | 1.0× | Starter |
| ⛏️ **Iron** | 5 | $500M | 1.05× | 1.03× | 1.05× | Buyable |
| 🔨 **Steel** | 15 | $2.5B | 1.12× | 1.06× | 1.10× | Buyable |
| ✨ **Gold** | 25 | $8B | 1.20× | 1.10× | 1.18× | Buyable |
| ⬜ **Platinum** | 35 | $18B | 1.28× | 1.14× | 1.25× | Buyable |
| 💎 **Diamond** | 45 | $45B | 1.35× | 1.18× | 1.35× | Buyable |
| 🖤 **Obsidian** | 55 | - | 1.42× | 1.22× | 1.45× | Craft-only |
| 🔮 **Mythril** | 70 | - | 1.50× | 1.28× | 1.55× | Craft-only |
| 🌌 **Void** | 85 | - | 1.60× | 1.35× | 1.70× | Craft-only |
| 🌠 **Cosmic** | 100 | - | 1.70× | 1.42× | 1.85× | Craft-only |
| 🌟 **Stellar** | 125 | - | 1.85× | 1.50× | 2.00× | Craft-only |
| ♾️ **Eternal** | 150 | - | 2.00× | 1.60× | 2.20× | Craft-only |
| 🌋 **Primordial** | 175 | - | 2.20× | 1.75× | 2.50× | Craft-only |
| 🔆 **Transcendent** | 200 | - | 2.50× | 2.00× | 3.00× | Craft-only |
| 🌞 **Celestial** | 250 | - | 3.00× | 2.30× | 3.40× | Craft-only |
| 🕳️ **Singularity** | 300 | - | 3.60× | 2.60× | 3.90× | Craft-only |
| 🌀 **Infinity** | 400 | - | 4.50× | 3.10× | 4.60× | Craft-only |
| 💫 **Omniversal** | 500 | - | 5.80× | 3.70× | 5.50× | Craft-only |

## Depths (15 total)

Each depth has its own ore pool. Always mine at the deepest depth you've unlocked - it has the best ores.

| Depth | Level | What you'll find |
|---|---|---|
| 🌿 **Surface Mines** | 1 | Stone, coal, iron, copper |
| 🍃 **Mossy Grotto** | 5 | + silver |
| ⛰️ **Stone Quarry** | 10 | + gold |
| 🕳️ **Underground Tunnels** | 15 | + sapphire, obsidian |
| 🏺 **Ancient Ruins** | 25 | + ruby, fire gem, lava crystal, emerald |
| 🦇 **Deep Caverns** | 30 | + diamond |
| 🕸️ **Haunted Depths** | 40 | + platinum, mythril |
| 🌋 **Volcanic Chambers** | 55 | + crystal, dragon stone |
| 🔥 **Magma Pits** | 65 | + star metal, core fragment |
| 💥 **The Core** | 80 | + stardust |
| 🌑 **Void Rifts** | 90 | Cosmic-tier focused |
| 🌠 **Astral Mines** | 100 | + void shard |
| 🧊 **Crystalline Expanse** | 125 | + aether crystal |
| 🪐 **Primordial Strata** | 150 | + singularity |
| ⚛️ **Genesis Vault** | 200 | The endgame |

## Perks

Unlocked at level milestones - they stack permanently.

| Level | Perk |
|---|---|
| 5 | **Apprentice Miner** - +5% ore value |
| 10 | **Experienced Digger** - +3% XP |
| 15 | **Tunnel Explorer** - Unlock Underground Tunnels |
| 20 | **Keen Eye** - +5% rare chance + Ore Scanner |
| 25 | **Ore Specialist** - +10% ore value |
| 30 | **Deep Diver** - Unlock Deep Caverns + 5% XP |
| 35 | **Demolition Expert** - Explosive Mining |
| 40 | **Fortune Seeker** - +10% rare chance |
| 45 | **Master Excavator** - +15% ore value |
| 50 | **Golden Hands** - Golden Touch + 10% XP |
| 55 | **Volcanic Pioneer** - Unlock Volcanic Chambers + 5% XP |
| 65 | **Gem Whisperer** - +15% rare chance |
| 75 | **Magnetized** - Ore Magnet + 8% XP |
| 80 | **Core Breaker** - Unlock The Core |
| 100 | **Mining Grandmaster** - +25% ore value, +15% XP, +25% rare chance + Master Strike |
| 110 | **Vein Seeker** - +10% ore value |
| 125 | **Crystal Pioneer** - Unlock Crystalline Expanse + 5% XP |
| 140 | **Treasure Hunter** - +10% rare chance |
| 150 | **Strata Breaker** - Unlock Primordial Strata + 10% ore value + 5% XP |
| 175 | **Depth Master** - +5% XP + 10% rare chance |
| 200 | **Genesis Miner** - Unlock Genesis Vault + 20% ore value, +20% XP, +15% rare chance |

## Active abilities

5 unlockable abilities, one-use-per-session inside `/mine dig`:

| Ability | Cooldown | Effect |
|---|---|---|
| 📡 **Ore Scanner** (lvl 20) | 5 min | Guarantees rare+ ore on next mine |
| 💣 **Explosive Mining** (lvl 35) | 10 min | Mine 3 ores at once |
| 👑 **Golden Touch** (lvl 50) | 15 min | 2× sell value on next ore |
| 🧲 **Ore Magnet** (lvl 75) | 10 min | 3× crafting-ore chance for 5 mines |
| ⚡ **Master Strike** (lvl 100) | 30 min | 5× ore yield + guaranteed legendary |

Each ability can only be used **once per dig session**.

## Consumable tools

One-time buys from [`/mine shop`](shop.md):

| Tool | Price | Effect |
|---|---|---|
| 🧨 **Dynamite** | $500M | Mine 2 extra ores |
| 💣 **Mega Bomb** | $1.5B | Mine 4 extra ores |
| 🔧 **Diamond Drill** | $2B | +50% ore quality, 10 mines |
| 📡 **Depth Scanner** | $800M | Guarantees uncommon+ for 5 mines |
| 🍀 **Lucky Charm** | $3.5B | 2× rare-ore chance for 10 mines |

## Donor benefits

- **Mine All** - instantly mine every spot on the page (one click).
- **+25% bonus earnings** on all ores.
