# /mine dig

Open the interactive mining grid and start a session - click 100 spots across 5 pages, mine ores, gain XP, and sell or craft with what you find.

## Description

Each session uses a **4×5 grid (20 spots per page, 5 pages = 100 spots total)**. You click any unmined spot to extract an ore - the ore is rolled from your **current depth's** ore pool, weighted by your pickaxe and perks.

You always mine at the **deepest depth you've unlocked** automatically.

## Usage

`/mine dig`

## Examples

`/mine dig`

## Session controls

The view has buttons for:

- **Grid spots** - click to mine. Empty `⬛` becomes the ore that drops.
- **Page navigation** - flip between the 5 pages.
- **Tools** - use a consumable tool you've bought (Dynamite, Mega Bomb, etc.).
- **Abilities** - fire one of your unlocked abilities (one use per session).
- **Donor: Mine All** - instantly mine every spot on the current page (donator perk).

## What gets calculated per mine

For every spot you click:

1. Roll an ore from the depth's pool, weighted by:
   - Pickaxe **rare-ore bonus** for rare/legendary ores
   - All your perks' rare-ore bonuses
   - Lucky Charm tool (+25% rare chance) if active
2. Roll a sell value within the ore's range, multiplied by pickaxe + perk **value bonus**.
3. Calculate XP based on rarity, multiplied by pickaxe + perk **XP bonus**.
4. XP is awarded immediately (level-ups happen mid-session), and the ore goes
   into your inventory with its rolled value banked to it.

!!! note "Ores are not auto-sold"
    Mining never pays money directly. Every ore lands in your inventory carrying
    the value it rolled - bonuses from your pickaxe, perks, Golden Touch and the
    donor Mine All are locked in at that moment. You collect the money when you
    sell it in [`/mine inventory`](inventory.md), so holding an ore for a recipe
    never costs you value.

## Cooldown

The mining cooldown is shared across the bot's general action system - Patreon donators get a reduced cooldown.

## Session limits

- **One active session per user.** If you have an active session and run `/mine dig` again, you'll see a status embed instead.
- Sessions expire after **5 minutes of inactivity** - abandoned sessions are auto-cleaned.

## Donor benefits (Mine All)

Patrons (any tier) unlock:

- **Mine All button** - clears the entire current page in one click.
- **+25% bonus earnings** on every ore.

## Notes

- Always uses your **deepest unlocked depth** - no manual selection during dig.
- To switch to an earlier depth, use [`/mine profile`](profile.md) (depth switcher).
- See [`/mine depths`](depths.md) for the full ore-pool breakdown.
- See [`/mine shop`](shop.md) to buy consumable tools that boost a session.
- See [Mining index](index.md) for the full pickaxe/perk/ability tables.
