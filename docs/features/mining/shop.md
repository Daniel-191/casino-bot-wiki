# /mine shop

Buy pickaxes with money (no ores needed) or stock up on consumable tools that boost your next dig sessions.

## Description

The mining store. Two sections:

- **Pickaxes** - any of the buyable tiers (Flint through Obsidian) can be purchased outright with money. Higher tiers require both a dollar price and the level requirement.
- **Consumable tools** - single-use boosters that apply effects during a `/mine dig` session. These can be bought in bulk (up to 100 at a time).

## Usage

`/mine shop`

## Examples

`/mine shop`

## Pickaxes (buyable)

| Pickaxe | Level | Price |
|---|---|---|
| 🪨 **Flint** | 1 | Free starter |
| ⬛ **Slate** | 5 | $500M |
| 🏔️ **Granite** | 15 | $2.5B |
| 🧱 **Basalt** | 25 | $8B |
| ⚪ **Quartz** | 35 | $18B |
| 🖤 **Obsidian** | 45 | $45B |

Pickaxes from Bedrock (lvl 55) onwards are **craft-only** - you can't buy them here, see [`/mine inventory`](inventory.md) for crafting recipes.

## Consumable tools

| Tool | Price | Effect |
|---|---|---|
| 🧨 **Dynamite** | $500M | Mine 2 extra ores in one action |
| 💣 **Mega Bomb** | $1.5B | Mine 4 extra ores in one action |
| 🔧 **Diamond Drill** | $2B | +50% ore quality for 10 mines |
| 📡 **Depth Scanner** | $800M | Guarantees uncommon+ ore for 5 mines |
| 🍀 **Lucky Charm** | $3.5B | 2× rare-ore chance for 10 mines |

Tools stack in your inventory - buy multiple to use across many sessions.

### Buying several at once

After picking a tool you get a quantity row before confirming:

- `-10` `-1` `+1` `+10` adjust the amount (1 to 100 per purchase).
- **Max** jumps to the largest amount your balance covers.
- The confirm screen shows unit price, quantity and running total, and **Confirm Purchase** greys out while the total is more than you can afford.

Pickaxes are one-time unlocks, so they're still bought one at a time.

## Notes

- Prices come straight from your wallet money.
- Once a pickaxe is bought, equip it via [`/mine inventory`](inventory.md).
- Consumable tools are spent during `/mine dig` sessions.
- For the full pickaxe ladder including craft-only tiers, see the [Mining index](index.md).
