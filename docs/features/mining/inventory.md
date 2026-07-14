# /mine inventory

View your collected ores, sell them for money, or craft and equip pickaxes.

## Description

Your mining backpack. Shows every ore you've extracted but not yet sold, plus crafting ores reserved for pickaxe recipes. From here you can:

- **Sell ores** - convert all (or selected ores) to money at their sell values.
- **Craft pickaxes** - spend the right ores + money to build a craft-only pickaxe.
- **Equip pickaxes** - switch to any pickaxe you own.

## Usage

`/mine inventory`

## Examples

`/mine inventory`

## What it shows

- **Crafting Ores** - coal, iron, copper, silver, gold, sapphire, obsidian, ruby, emerald, fire gem, lava crystal, platinum, mythril, dragon stone, star metal, core fragment, stardust, crystal, void shard, aether crystal, singularity.
- **Pickaxes** - every pickaxe you've bought or crafted, with the equipped one marked.
- **Tools** - consumables (Dynamite, Mega Bomb, Diamond Drill, Depth Scanner, Lucky Charm) you can spend in a `/mine dig` session.

## Crafting

Craft-only pickaxes (Obsidian → Omniversal) need specific ores plus a dollar cost. Examples:

| Pickaxe | Required ores | Cost |
|---|---|---|
| **Iron** | 10 iron, 5 coal | $50M |
| **Steel** | 25 iron, 15 coal, 10 copper | $250M |
| **Gold** | 20 gold, 15 silver, 5 sapphire | $800M |
| **Diamond** | 15 diamond, 10 ruby, 10 emerald, 20 gold | $5B |
| **Obsidian** | 30 obsidian, 15 fire gem, 10 lava crystal | $10B |
| **Mythril** | 25 mythril, 15 dragon stone, 20 obsidian, 10 fire gem | $20B |
| **Cosmic** | 25 star metal, 20 core fragment, 30 stardust, 15 dragon stone | $80B |
| **Transcendent** | 80 stardust, 60 core fragment, 50 star metal, 40 dragon stone | $4T |
| **Celestial** | 60 void shard, 35 aether crystal, 80 stardust, 10 singularity | $10T |
| **Singularity** | 30 singularity, 60 aether crystal, 80 void shard | $25T |
| **Infinity** | 60 singularity, 100 aether crystal, 120 void shard, 100 stardust | $60T |
| **Omniversal** | 120 singularity, 150 aether crystal, 150 void shard, 150 stardust | $150T |

Buyable pickaxes (Iron, Steel, Gold, Platinum, Diamond) can also be crafted at lower cost.

## Notes

- **Selling is irreversible** - once sold, ores convert to money and disappear from inventory.
- Crafting ores accumulate - keep mining until you have enough for the next tier.
- Equipping is instant; it doesn't consume the pickaxe.
- See [`/mine shop`](shop.md) to buy pickaxes with money instead of crafting.
- See [`/mine profile`](profile.md) for level/XP and equipped pickaxe overview.
