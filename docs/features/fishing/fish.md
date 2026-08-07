# /fish

Cast your line, catch a fish, get paid. Includes the rod shop, location switcher, and inventory - everything fishing-related lives behind this one command.

## Description

Each cast rolls a fish from your current location's pool, weighted by rarity. Higher-tier rods boost money/XP/rare chances and shorten the cooldown. From the `/fish` view you can also:

- **Switch locations** (any unlocked location).
- **Buy/sell/equip rods.**

Your **best rod and best location are selected automatically**, for free - see [Automatic gear & location](#automatic-gear-location) below.
- **View your inventory** of caught fish.
- **Cast again** without retyping the command.

## Usage

`/fish`

## Examples

`/fish`

## What happens per cast

1. Cooldown check - base **4 seconds**, multiplied by your rod's cooldown reduction.
2. Roll a fish from your current location's pool (rarity-weighted).
3. **Apply rod bonuses:**
   - **Money bonus** to sell value
   - **XP bonus** to XP earned
   - **Rare-fish bonus** boosts legendary/mythical odds
4. Money lands in wallet, XP applies, level-up if threshold crossed.

## Buttons available

| Button | What it does |
|---|---|
| **🎣 Cast** | Cast a line at the current location |
| **🗺️ Locations** | Switch to any unlocked fishing spot |
| **🎒 Inventory** | View fish you've caught (collection-style) |
| **🛒 Rod Shop** | Buy new rods or sell old ones (60% refund) |
| **🔄 Equip** | Switch your equipped rod |

## Automatic gear & location

All of this is free and always on - there is nothing to buy or toggle:

- **Best rod auto-equipped.** Starting `/fish` equips the highest-tier rod you own, and buying a new rod equips it straight away.
- **Best location auto-selected.** Starting `/fish` drops you at the highest-level spot you've unlocked.
- **Auto-move on level up.** When a level up unlocks a *new* location, the session moves you there and the level-up message tells you where you went.
- **Manual picks are respected.** If you deliberately switch to a lower-tier spot, you stay there - you're only moved when a genuinely new location unlocks.

## Donor benefits

Donators get a small boost to **legendary/mythical** catch rates via the `patron_bonus` multiplier - exact value scales with tier.

## Notes

- **Cooldown:** 2.5 seconds base between casts; multiplied by rod cooldown reduction (0.625s on the Eternium rod) and by patron tier.
- **One equipped rod** at a time.
- Rod sell-back is **60% of purchase price**.
- Fishing **events** can buff catch rates or payouts globally - they fire automatically.
- For totals, see [`/fish-stats`](fish-stats.md). For the full rod/location ladder, see the [Fishing index](index.md).
- Equal-payout alternative system: [Pets](../pets/index.md).
