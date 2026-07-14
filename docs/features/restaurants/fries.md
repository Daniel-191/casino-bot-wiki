# Fries

Fry-shop delivery minigame. Pick the right items, navigate to the right area + house, get paid for accuracy and speed. Has its own level/XP/prestige system, upgrades, and global events.

## Commands

| Command | Description | Cooldown |
|---|---|---|
| [`/fries-in-bag`](#fries-in-bag) | Start a delivery shift | 4s |
| [`/fries-profile`](#fries-profile) | View level, XP, prestige, unlocks | 4s |
| [`/delivery-stats`](#delivery-stats) | View your delivery stats | 4s |
| [`/fries-event-status`](#fries-event-status) | Check current global event | 10s |
| [`/leaderboards fries`](#leaderboards-fries) | Top 100 delivery drivers | 4s |

---

## /fries-in-bag

Start a delivery shift. Receive a random order with 2–4 items, put the correct items in the bag, navigate to the correct area, find the right house, and collect payment.

### Description

Each delivery has 4 phases:

1. **Order** - random items shown.
2. **Bag** - pick the right items (wrong items = penalty).
3. **Area** - navigate to A, B, C, or D.
4. **House** - find the right house number.

Bonuses apply for weather, customer type, speed, and any active **global event**. Mistakes cost money.

### Usage

`/fries-in-bag`

### Pay structure

The delivery minigame is more hands-on than fishing, so payouts are tuned to reward each completed run.

- **Base pay** $20M–$45M per delivery, scaled by accuracy (correct bag, correct area, correct house).
- **Weather bonus** $2M–$5M — bad weather pays more.
- **Customer tip** scales with customer type and order size ($600K per $ of order value).
- **Speed bonus** up to $5M for sub-2-minute deliveries.
- **Special Order** $750M–$1.5B bonus, ~40% chance per delivery.
- **Level multiplier** up to ~100× at level 200 (applies to the whole payout).
- **Prestige bonus** +5% per prestige level on top of everything.
- **Global event multiplier** 3× to 10× when an event is active.

### XP per delivery

Quality matters — perfect deliveries are rewarded most.

- **Base XP** by quality: **125** perfect / **90** good / **60** rushed.
- **+1 XP** per $20M earned on the delivery.
- **+75 XP** on a Special Order.
- **×2 XP** during a global event.

### Active sessions

You can only run **one delivery at a time**. If you have a stuck session, the bot offers a "Clear Session" button.

---

## /fries-profile

Your delivery career profile - level, XP, prestige, and unlocks.

### Usage

`/fries-profile [user]`

### What it shows

- **Level** out of **200** with XP progress bar.
- **Prestige level** (P1, P2, etc.) - only visible if you've prestiged at least once.
- **Earnings bonus from prestige** - `prestige_level × PRESTIGE_BONUS_PER_LEVEL` (additive %).
- Button to view all unlocks across all levels.

### Prestige

After hitting **level 200**, you can prestige - resets your level back to 1 but adds a permanent earnings bonus on every delivery. Multiple prestiges stack the bonus.

---

## /delivery-stats

Lifetime delivery statistics.

### Usage

`/delivery-stats [user]`

### What it shows

- **Total / Successful / Success Rate / Perfect Deliveries**
- **Total Earned / Total Tips / Avg per Delivery**
- **Fastest Delivery** time
- **Favorite Area**
- **Total Distance** in blocks
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

Events are **global** — they affect every player at the same time and fire automatically **twice per day** (every 12 hours). There are **16** events across **5** tiers:

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

- Ranking by **prestige**, then **level**, then current XP.
- Each row: rank, name, level (+ prestige tag if any), total earnings, total deliveries.
- Your personal rank is shown in the footer.
- Paginated 10 per page (⬅️/➡️ buttons, 5-minute timeout).

---

## Upgrades

Bought separately (not in a slash command - bought through the in-game UI). Examples:

- **Insulated Bag** - keep food hot for better tips (+35% tips).
- **GPS Navigation** - reduce wrong delivery penalties (−50% penalties).
- **Premium Customers** - access higher paying customers (+25% base pay).
- **Weather Gear** - enhanced bad weather bonuses (+50% weather bonus).

Each upgrade has a max level. Bonuses stack.

## Notes

- **Cooldown** for `/fries-in-bag` and `/fries-profile`: 4 seconds.
- **Mistakes are costly** - wrong items, wrong area, or wrong house all reduce the payout.
