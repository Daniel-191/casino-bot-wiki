# Mining Events

Server-wide mining boosts that fire **twice a day** and apply to every miner at once. No signup - if an event is live, you get it.

## Description

Twice a day - at **07:00 and 19:00 UTC** - the bot rolls one of **27 mining events** and announces it in the mining events channel with a role ping. The event runs for a few hours, then expires on its own.

Events change the mining game while they're live: ore value, XP, rare ore odds, the `/mine dig` cooldown, how many ores a spot drops, and jackpot strikes. Everything stacks **on top of** your pickaxe bonuses, level perks, consumable tools and donor bonuses.

Run `/mine event` at any time to see what's active and when it ends.

## Usage

`/mine event`

## What events can change

| Effect | Range | Notes |
|---|---|---|
| **Ore value** | up to 4x | Multiplies the sale value of every ore you mine |
| **Mining XP** | up to 5x | Multiplies XP from every ore |
| **Rare ore odds** | up to 3x | Boosts rare and legendary weights in the depth's ore pool |
| **Cooldown** | up to -75% | Shortens the `/mine dig` cooldown, so you run far more sessions |
| **Double ore** | up to 60% of spots | A spot drops 2 ores instead of 1, at double value |
| **Jackpot strike** | up to 15x, up to 25% of ores | A single ore pays a huge multiple |
| **Ore focus** | varies | Specific ores flood the caves (only when they're worth at least the depth's average) |

## Event tiers

Rarer tiers hit harder but run shorter.

| Tier | Events | Feel |
|---|---|---|
| ⚪ Common | 6 | Solid, long, frequent |
| 🔵 Rare | 10 | Strong, a few hours |
| 🟣 Epic | 6 | Big numbers, short window |
| 🟡 Legendary | 2 | Multi-effect, drop everything |
| 🔴 Mythic | 3 | Rare, huge, 1-2 hours only |

## Full event list

### ⚪ Common

| Event | Duration | What it does |
|---|---|---|
| 💰 **Double Ore Value** | 3-5h | Ore value 2x |
| ⛏️ **Rich Veins** | 6-8h | Ore value 1.5x |
| 📚 **Apprentice Hours** | 5-8h | Mining XP 2x |
| 🪙 **Silver Lining** | 4-6h | Ore value 1.6x; silver, gold & sapphire spawn far more often |
| 🍀 **Lucky Strike** | 4-6h | 25% chance per ore to strike a 3x jackpot |
| ⚡ **Rapid Excavation** | 4-6h | `/mine dig` cooldown -50% |

### 🔵 Rare

| Event | Duration | What it does |
|---|---|---|
| 📈 **Ore Market Boom** | 3-4.5h | Ore value 2.5x; XP 1.5x |
| 🥇 **Gold Rush** | 2-3h | Ore value 3x |
| 🔥 **Smelter's Bonus** | 3-5h | Ore value 2x; cooldown -50% |
| 🎓 **Master Miner Seminar** | 3-4.5h | XP 3x |
| 🧘 **Deep Focus** | 4-6h | XP 2.5x; rare ore odds 1.25x |
| 🔮 **Crystal Bloom** | 3-5h | Ore value 1.6x; rare odds 2x; crystals & aether crystals flood the caves |
| 🌋 **Volcanic Activity** | 3-5h | Ore value 1.6x; rare odds 1.5x; crafting materials flood the caves |
| ⛏️ **Twin Veins** | 3-5h | 50% chance to mine double ore |
| 🛒 **Overflowing Carts** | 4-6h | Ore value 1.5x; XP 1.5x; 25% double ore |
| 🕗 **Double Shift** | 4-6h | Ore value 1.75x; cooldown -40% |

### 🟣 Epic

| Event | Duration | What it does |
|---|---|---|
| 🧠 **Prodigy Surge** | 1.5-2.5h | XP 5x |
| 💎 **Diamond Fever** | 2.5-4h | Ore value 2x; rare odds 1.5x; diamonds, emeralds & rubies flood the caves |
| 🌟 **Legendary Surge** | 2-3h | Ore value 2x; rare & legendary odds 3x |
| 💥 **Motherlode** | 2-3h | 15% chance per ore to strike an 8x jackpot |
| 🪨 **Cave-In Bonanza** | 2-3.5h | Ore value 1.25x; 60% double ore |
| 🔋 **Tireless Crew** | 2-3h | XP 1.5x; cooldown -75% |

### 🟡 Legendary

| Event | Duration | What it does |
|---|---|---|
| 🌑 **Blood Moon** | 2-3h | Ore value 2x; rare odds 1.5x; 25% double ore |
| 🎉 **Miner's Holiday** | 3-4.5h | Ore value 1.75x; XP 1.75x; cooldown -66% |

### 🔴 Mythic

| Event | Duration | What it does |
|---|---|---|
| ⚫ **Singularity Storm** | 1-2h | Rare odds 2x; 20% chance per ore to strike a 15x jackpot |
| 🐉 **Dragon's Hoard** | 1-1.75h | Ore value 4x; rare odds 2.5x |
| 🌎 **The Great Quake** | 1-2h | Ore value 2.5x; XP 2.5x; rare odds 2x; cooldown -50% |

## How to get the most out of an event

- **Value is locked in when you mine**, not when you sell. Ores mined during a 4x event keep that value in your inventory forever - you can hold them and sell whenever.
- **Cooldown events are the sleeper picks.** A -75% cooldown means four times as many sessions, which multiplies everything else you already have.
- **XP events don't pay cash** - they pay levels, which unlock deeper depths, better perks and stronger abilities. Long-term they're worth more than a value event.
- **Stack your abilities into it.** Golden Touch and Master Strike during a mythic event is the single biggest haul in the game.
- Events fire on their own schedule, so grab the mining event role to get pinged.

## Notes

- Only **one event runs at a time**. A new event replaces the current one.
- The bot avoids repeating the last few events, so you see variety across the week.
- An event that ends mid-session **does not** claw back anything you already mined.
- Admin-only management lives under `/mining_event` (start, end, status, list, preview).
- See also [`/mine dig`](dig.md), [`/mine depths`](depths.md) and [`/mine profile`](profile.md).
