# /mine depths

Browse every mining depth, see which ones you've unlocked, and view each depth's ore pool with chances and value ranges.

## Description

A full reference of all 15 depths in the mining system. Each depth shows:

- Level requirement.
- Lock/unlock status for **your** account.
- Every ore in its pool with **drop weight** (relative chance) and **sell value range**.

Useful when planning what to grind next or figuring out where a specific crafting ore comes from.

## Usage

`/mine depths`

## Examples

`/mine depths`

## Depth list

| Depth | Level | Ore highlights |
|---|---|---|
| 🌿 **Surface Mines** | 1 | Stone, coal, iron, copper |
| 🍃 **Mossy Grotto** | 5 | First silver |
| ⛰️ **Stone Quarry** | 10 | First gold |
| 🕳️ **Underground Tunnels** | 15 | First sapphire, obsidian |
| 🏺 **Ancient Ruins** | 25 | First ruby, emerald, fire gem, lava crystal |
| 🦇 **Deep Caverns** | 30 | First diamond |
| 🕸️ **Haunted Depths** | 40 | First platinum, mythril |
| 🌋 **Volcanic Chambers** | 55 | First crystal, dragon stone |
| 🔥 **Magma Pits** | 65 | First star metal, core fragment |
| 💥 **The Core** | 80 | First stardust |
| 🌑 **Void Rifts** | 90 | Cosmic-tier focused |
| 🌠 **Astral Mines** | 100 | First void shard |
| 🧊 **Crystalline Expanse** | 125 | First aether crystal |
| 🪐 **Primordial Strata** | 150 | First singularity |
| ⚛️ **Genesis Vault** | 200 | Endgame |

## How weights work

Each ore in a pool has a relative weight (e.g., `stone: 40`, `coal: 30`). Higher weight = more likely to roll. Pickaxe and perk **rare-ore bonuses** multiply the weights of rare/legendary ores in your favor.

## Notes

- Locked depths are visible but greyed out - useful as a roadmap.
- The deepest depth you've unlocked is automatically used by [`/mine dig`](dig.md).
- To force a shallower depth (e.g., to farm a specific crafting ore), use the depth switcher in [`/mine profile`](profile.md).
- For the full ore catalog, see the [Mining index](index.md).
