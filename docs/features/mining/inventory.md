# /mine inventory

View your collected ores, sell them for money, or craft and equip pickaxes.

## Description

Your mining backpack. Every ore you extract lands here and stays until you sell it or spend it on a recipe - **mining never auto-sells anything**. From here you can:

- **Sell Ores** - pick which ore stacks to convert to money, keeping recipe materials.
- **Sell All** - convert your entire backpack to money in one click.
- **Craft pickaxes** - spend the right ores + money to build a pickaxe.
- **Equip pickaxes** - switch to any pickaxe you own.
- **Sell Pickaxe** - clear out an old pickaxe for a partial money refund, or trash it for nothing.

Each ore stack shows the money it's worth. That figure is the sum of the values the ores rolled when you mined them, so your pickaxe, perk and ability bonuses are already baked in - saving an ore for crafting never loses you value.

## Usage

`/mine inventory`

## Examples

`/mine inventory`

## What it shows

- **Ores** - every ore you're holding, with its quantity and total sell value. Ores marked ⚒️ are required by at least one crafting recipe (stone is the only ore no recipe uses).
- **Pickaxes** - every pickaxe you've bought or crafted, with the equipped one marked.
- **Tools** - consumables (Dynamite, Mega Bomb, Diamond Drill, Depth Scanner, Lucky Charm) you can spend in a `/mine dig` session.

## Crafting

Crafting needs specific ores plus a dollar cost. Everything from the Slate Pickaxe up is craftable - the early tiers use ordinary ores you pick up on the surface, so you can craft from your very first session. Bedrock → Titan are **craft-only** and can't be bought at all:

| Pickaxe | Required ores | Cost |
|---|---|---|
| **Slate** | 10 iron, 5 coal | $50M |
| **Granite** | 25 iron, 15 coal, 10 copper | $250M |
| **Basalt** | 20 gold, 15 silver, 5 sapphire | $800M |
| **Quartz** | 10 platinum, 25 gold, 5 diamond | $2B |
| **Obsidian** | 15 diamond, 10 ruby, 10 emerald, 20 gold | $5B |
| **Bedrock** | 30 obsidian, 15 fire gem, 10 lava crystal | $10B |
| **Cinder** | 25 mythril, 15 dragon stone, 20 obsidian, 10 fire gem | $20B |
| **Ember** | 30 mythril, 20 dragon stone, 15 star metal, 10 core fragment | $40B |
| **Magma** | 25 star metal, 20 core fragment, 30 stardust, 15 dragon stone | $80B |
| **Caldera** | 40 stardust, 30 star metal, 25 core fragment, 20 dragon stone | $200B |
| **Mantle** | 50 stardust, 35 core fragment, 30 star metal, 25 mythril | $500B |
| **Core** | 60 stardust, 45 core fragment, 40 star metal, 30 dragon stone | $1.5T |
| **Forge** | 80 stardust, 60 core fragment, 50 star metal, 40 dragon stone | $4T |
| **Crucible** | 60 void shard, 35 aether crystal, 80 stardust, 10 singularity | $10T |
| **Furnace** | 30 singularity, 60 aether crystal, 80 void shard | $25T |
| **Inferno** | 60 singularity, 100 aether crystal, 120 void shard, 100 stardust | $60T |
| **Titan** | 120 singularity, 150 aether crystal, 150 void shard, 150 stardust | $150T |

Buyable pickaxes (Slate, Granite, Basalt, Quartz, Obsidian) can also be crafted at lower cost.

## Selling and trashing pickaxes

Upgrading leaves old pickaxes sitting in your list forever. **Sell Pickaxe** clears them out:

- **Sell** pays back **60% of the money you actually spent on that pickaxe** - the shop price if you bought it, the recipe's dollar cost if you crafted it. Crafting ores are not refunded.
- **Trash** deletes the pickaxe and pays nothing. It's there for pickaxes you don't want money for, and for anything with a $0 refund.
- Your starter **Flint Pickaxe** can't be sold or trashed - it's the fallback the game equips for you.
- Selling or trashing the pickaxe you have equipped automatically re-equips the Flint Pickaxe.

## Notes

- **Selling is irreversible** - once sold, ores convert to money and disappear from inventory. Check the ⚒️ markers before using **Sell All**.
- Selling a pickaxe is also irreversible, and always a loss - you never get back more than you put in. Buying it again costs full price.
- Ores accumulate across sessions - keep mining until you have enough for the next tier.
- Equipping is instant; it doesn't consume the pickaxe.
- See [`/mine shop`](shop.md) to buy pickaxes with money instead of crafting.
- See [`/mine profile`](profile.md) for level/XP and equipped pickaxe overview.
