# Fries

Fry-shop delivery minigame. Read the address, bag the right items, find the right block and door, get paid. Has its own level/XP/zone/prestige progression, upgrades, and global events.

## Commands

| Command | Description | Cooldown |
|---|---|---|
| [`/fries-in-bag`](#fries-in-bag) | Start a delivery shift | 4s |
| [`/fries-profile`](#fries-profile) | View level, XP, zone, reputation, unlocks | 4s |
| [`/delivery-stats`](#delivery-stats) | View your delivery stats | 4s |
| [`/fries-event-status`](#fries-event-status) | Check current global event | 10s |
| [`/leaderboards fries`](#leaderboards-fries) | Top 100 delivery drivers | 4s |

---

## /fries-in-bag

Start a delivery shift. You get an order, an address, and weather. Bag the right items, drive to the right block, knock on the right door.

### Description

Each delivery has 4 phases:

1. **Order** - your items and the full address are shown. **This is the only time you see the address.**
2. **Bag** - pick the right items. A wrong item forfeits **that item's full value**.
3. **Block** - pick the correct block (A-D).
4. **Door** - find the right door number (1-9).

### Usage

`/fries-in-bag`

### Pay structure

The **order itself is your base pay**. Every item on the menu has a fixed value, and the order's total is what the delivery is worth before multipliers.

- **Order value** - the sum of the items' fixed values (this is the bulk of your pay).
- **Customer tip** - 25% of the order's value, times the customer's tip multiplier.
- **Weather bonus** - $2M-$5M base; bad weather pays more.
- **Speed bonus** - up to $5M base for sub-2-minute deliveries. **Every wrong door costs you 30 seconds** against this.
- **Special Order** - 8% chance, worth **+150% of the order's value**.
- Everything above is then multiplied by your **payout scale**.

### Payout scale

Your payout scale is the product of four things:

| Axis | Range | How you raise it |
|---|---|---|
| **Zone** | ×1 → ×433 | Level up to unlock the next zone |
| **Level** | ×1 → ×4.6 | Levelling, smoothly, all the way to 500 |
| **Zone reputation** | ×1 → ×1.30 | Deliver repeatedly *in your current zone* |
| **Prestige** | ×1 → ×1.50 | +5% per prestige level, max 10 |

Zones do the heavy lifting: each one pays roughly **double** the last, so unlocking a zone is the single biggest jump in the game.

### Menu

There are **10 menu items and they are identical in every zone**. A burger is worth the same base value in the suburbs as it is on the Gold Coast - what changes is the multiplier applied on top.

| Item | Base value | | Item | Base value |
|---|---|---|---|---|
| Cupcake | $16.8M | | Hot Dog | $9.6M |
| Burger | $14.4M | | Donut | $9.6M |
| Pizza | $14.4M | | Fries | $7.2M |
| Pancakes | $14.4M | | Ice Cream | $7.2M |
| | | | Cookies | $7.2M |
| | | | Soda | $4.8M |

An order is 2-4 random items.

### Penalties

- **Wrong item** - you forfeit that item's **full value** out of the order, plus 1% impatience. This scales with your zone automatically.
- **Wrong block** - -8% of final earnings, plus 1% per repeat. The correct block is **not** revealed.
- **Wrong door** - -3% of final earnings, plus 1% per repeat, **and** 30 seconds against your speed bonus.
- Penalty reduction from level unlocks and the GPS upgrade softens all of these.

### XP per delivery

XP depends on **quality and level only** - never on how much you earned, so rich zones don't level you faster.

- **Base XP** by quality: **28** perfect (no mistakes at all) / **20** good (right items) / **14** rushed (wrong items).
- **+17 XP** on a Special Order.
- The total is multiplied by a **level multiplier** that rises with your zone unlocks — ×1 at level 1, ×2.3 at 25, ×13.8 at 100, ×28 at 200, ×107 at 500.
- **×2 XP** during a global event.

This is tuned to match mining's and fishing's levelling pace *per hour*, not per
click. Fries has no cooldown — the **Play Again** button starts the next delivery
immediately — so a driver runs roughly 430 deliveries an hour where a miner is
capped at 100 ores per 10 minutes and an angler at one cast per 2.5 seconds. The
level multiplier follows the same step shape those two get from unlocking deeper
depths and further locations, rather than a smooth curve.

Expect around **70 hours** of continuous play to level 200, which sits between
mining (~83 h) and fishing (~67 h). Run
`python scripts/xp_balance_gauntlet.py` to re-check the comparison after any
change to ore pools, fish pools, rods, pickaxes, cooldowns, or the base tiers.

### Active sessions

You can only run **one delivery at a time**. If you have a stuck session, the bot offers a "Clear Session" button.

### Settings

The gear button on the `/fries-in-bag` menu (and on the post-delivery menu) opens your personal display settings. These are **cosmetic only** - they never change pay, penalties or progression. Settings are saved per user and apply from your next delivery.

| Setting | Options | Default |
|---|---|---|
| Item Button Labels | Emoji + Text, Emoji Only, Text Only | Emoji + Text |
| Order Item Values | Show Values, Hide Values | Show Values |

**Item Button Labels** controls the food buttons you press while packing the bag. *Emoji Only* strips the item names off for a compact grid.

**Order Item Values** controls whether the order list on the new-order screen prints what each item is worth.

---

## Zones

You are **always placed in the highest zone your level has unlocked**. There is no zone picker and no way to stay in a lower zone - when you level past a threshold, your next delivery is in the new zone.

Every zone has the **same layout**: 4 blocks (A-D) and 9 doors per block. The number of buttons never grows - the only thing that changes between zones is the pay.

| Zone | Level | Pay | Layout |
|---|---|---|---|
| 🏘️ Suburban Blocks | 1 | ×1 | 4 × 9 houses |
| 🏙️ Downtown Strip | 15 | ×2 | 4 × 9 houses |
| 🏢 Business District | 30 | ×3.9 | 4 × 9 offices |
| 🏰 Historic Quarter | 45 | ×7.6 | 4 × 9 doors |
| ⚓ Riverside Docks | 65 | ×14.9 | 4 × 9 berths |
| 🏬 Uptown Heights | 85 | ×29.2 | 4 × 9 apartments |
| 🏡 Luxury Estates | 110 | ×57.2 | 4 × 9 gates |
| 🌆 Skyline Penthouses | 140 | ×112.4 | 4 × 9 suites |
| 🏝️ Private Island | 170 | ×220.6 | 4 × 9 villas |
| 👑 The Gold Coast | 200 | ×433.1 | 4 × 9 estates |

Doors are renamed to suit the zone (houses, suites, villas), but there are always nine of them. The Gold Coast is the last zone; past level 200 your progression comes from the level curve and zone reputation.

## Zone reputation

Every zone tracks its **own** delivery count and converts it into a reputation rank. Each rank is worth **+6% pay in that zone**, and reputation is never lost.

| Rank | Deliveries in that zone | Bonus |
|---|---|---|
| R1 | 25 | +6% |
| R2 | 75 | +12% |
| R3 | 175 | +18% |
| R4 | 350 | +24% |
| R5 | 650 | +30% |

New zones start at R0, but a new zone's base pay is already about double the old one, so moving up is always an immediate gain.

---

## /fries-profile

Your delivery career profile.

### Usage

`/fries-profile [user]`

### What it shows

- **Level** out of **500** with XP progress bar.
- **Prestige level** (P1, P2, ...) and its bonus, if you have any.
- **Current zone** - description, pay multiplier, reputation rank and progress to the next rank.
- **Total payout scale** - the combined multiplier from every axis.
- **Next zone** and the level it unlocks at.
- Button to view all unlocks across all levels.

---

## Prestige

Prestige grants a permanent **+5% additive** earnings bonus, up to **level 10** (+50% in total). It applies to every delivery and stacks with your zone, zone reputation, level curve and upgrades.

Prestige is shown on your [`/fries-profile`](#fries-profile) as a `P1`, `P2`, … tag next to your level, and is used as a tiebreaker on the [leaderboard](#leaderboards-fries).

!!! note "No prestige command"
    There is currently no command to prestige. The bonus applies to anyone who already has a prestige level, but it cannot be gained in-game right now.

---

## /delivery-stats

Lifetime delivery statistics.

### Usage

`/delivery-stats [user]`

### What it shows

- **Total / Successful / Success Rate / Perfect Deliveries**
- **Total Earned / Total Tips / Avg per Delivery**
- **Fastest Delivery** time and **Favourite Zone**
- **Zone Reputation** breakdown - rank and delivery count for every zone you've worked
- **Active event** indicator (if one is currently running)

---

## /fries-event-status

Check the current global delivery event.

### Usage

`/fries-event-status`

### What it shows

If an event is active, a tier-coloured embed with:

- **Headline** with event emoji + name + pay multiplier.
- **Tier** (Common / Rare / Epic / Legendary / Mythical) and a flavour line.
- **Duration** field with a relative + absolute end timestamp.
- **What's Affected** field listing base pay multiplier, ×2 XP, and special-order scaling.

If no event is active, the embed says so and tells you to check back.

### Event roster

Events are **global** — they affect every player at the same time and fire automatically **twice per day** at **random times**, one in the afternoon and one in the evening US time. There are **16** events across **5** tiers:

| Tier | Multiplier | Examples |
|---|---|---|
| ⚪ **Common** | 3× | Lunch Rush, Dinner Rush, Breakfast Blitz, Happy Hour |
| 🟢 **Rare** | 4× | Late Night Orders, Weekend Warriors, Payday Splurge |
| 🟣 **Epic** | 5× | Storm Warning, Food Truck Strike, Festival Frenzy |
| 🟡 **Legendary** | 6–7× | Game Day, Viral Review, Midnight Premiere |
| 🔴 **Mythical** | 10× | Jackpot Hour, Gold Rush, Royal Visit |

Higher tiers are rarer. During any event, base pay is multiplied by the listed amount and XP earned is doubled.

### Notes

- **Cooldown:** 10 seconds.

---

## /leaderboards fries

Top 100 delivery drivers across the bot.

### Usage

`/leaderboards fries`

### What it shows

- Ranking by **level**, then prestige level, then total deliveries, then current XP.
- Each row: rank, name, level (+ prestige tag if any), total earnings, total deliveries.
- Your personal rank is shown in the footer.
- Paginated 10 per page (⬅️/➡️ buttons, 5-minute timeout).

---

## Upgrades

Bought separately (not in a slash command - bought through the in-game UI). One-time purchases, permanent, and they stack with level unlocks:

- **Insulated Bag** - $50B - keep food hot for better tips (+35% tips).
- **GPS Navigation** - $75B - reduce wrong delivery penalties (−50% penalties).
- **Premium Customers** - $100B - access higher paying customers (+25% base pay).
- **Weather Gear** - $150B - enhanced bad weather bonuses (+50% weather bonus).

## Level unlocks

You earn a free permanent bonus every 5 levels, up to level 200 - **40 unlocks** in total. They apply automatically to every delivery and stack with shop upgrades. Use **View All Unlocks** on your profile for the full list.

## Notes

- **Cooldown** for `/fries-in-bag` and `/fries-profile`: 4 seconds.
- **The address is shown once.** Read it before you start bagging - it is hidden on every screen after the order card, and a wrong block will not tell you the right one.
- **Mistakes are costly** - a wrong item forfeits its full value, and wrong blocks/doors cut into your payout.
