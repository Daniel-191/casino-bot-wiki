# /fish

Cast your line, catch a fish, get paid. Includes the rod shop, location switcher, and inventory - everything fishing-related lives behind this one command.

## Description

Each cast rolls a fish from your current location's pool, weighted by rarity. Higher-tier rods boost money/XP/rare chances and shorten the cooldown. From the `/fish` view you can also:

- **Switch locations** (any unlocked location).
- **Buy/sell/equip rods.**
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

## Donor benefits

Donators get a small boost to **legendary/mythical** catch rates via the `patron_bonus` multiplier - exact value scales with tier.

## Notes

- **Cooldown:** 4 seconds base; reduced by rod cooldown reduction (down to 1 second on Transcendent rod).
- **One equipped rod** at a time.
- Rod sell-back is **60% of purchase price**.
- Fishing **events** can buff catch rates or payouts globally - they fire automatically.
- For totals, see [`/fish-stats`](fish-stats.md). For the full rod/location ladder, see the [Fishing index](index.md).
- Equal-payout alternative system: [Pets](../pets/index.md).
