# Farming System

Plant crops, wait for them to grow on real-world timers, and harvest for a profit. Farming is Paradise Bot's main passive income system - buy seeds with money you already have, walk away, come back hours later, sell the produce for more than you paid.

## How it works

1. Run **`/farming`** to open your farm.
2. Click **Plant** to pick a crop, choose how many to plant, optionally apply fertilizer, and pick which slot(s).
3. Wait - every crop has its own real-time timer (15 minutes for a sprout up to 36 hours for diamond melon).
4. Once ready, click **Harvest** to collect your money.
5. Optionally **Replant** to refill the same slots with the same crops + fertilizers in one click.

## Crops

12 crop tiers, each with a base price, sell price, and grow time:

| Tier | Crop | Buy | Sell | Grow time | Profit |
|---|---|---|---|---|---|
| **Starter** | Sprout | $10k | $12.5k | 15 min | 25% |
| | Lettuce | $75k | $91.5k | 30 min | 22% |
| | Wheat | $500k | $600k | 1 h | 20% |
| **Field** | Carrot | $3M | $3.54M | 2 h | 18% |
| | Corn | $15M | $17.25M | 3 h | 15% |
| | Potato | $75M | $84M | 4 h | 12% |
| **Orchard** | Tomato | $400M | $440M | 6 h | 10% |
| | Pumpkin | $2B | $2.16B | 8 h | 8% |
| **Estate** | Grapes | $10B | $10.6B | 12 h | 6% |
| | Watermelon | $50B | $52.25B | 16 h | 4.5% |
| **Mythic** | Golden Apple | $250B | $257.5B | 24 h | 3% |
| | Diamond Melon | $1T | $1.02T | 36 h | 2% |

### Which crop should I plant?

Cheap crops pay a **higher return per hour**, expensive crops pay **more per crop slot**. Since your farm is capped at 300 crops (3 slots × 100), the trade-off is real:

- **Short on money?** Plant lower tiers. They turn over fast and grow your bankroll quickly - a sprout returns 25% every 15 minutes.
- **Short on time?** Plant higher tiers. A diamond melon only needs you once every 36 hours.
- **Filling the whole farm?** The best crop is roughly the highest tier you can afford 300 of. Past that point you're wasting slots on cheap crops.

No crop is a dead end - each tier beats the one below it on profit per slot, and the one above it on profit per hour.

## Fertilizers

Optional speed-up purchased per planting. Cost is a **share of the crop's own profit**, so it scales with whatever you're growing and is always worth using if you'll be back in time to harvest:

| Fertilizer | Cost | Speed boost |
|---|---|---|
| **Basic** | 12% of crop profit | 20% faster (0.8× grow time) |
| **Super** | 30% of crop profit | 40% faster (0.6×) |
| **Mega** | 50% of crop profit | 60% faster (0.4×) |

For example, mega fertilizer on wheat ($100k profit) costs $50k per crop and drops the timer from 1 h to 24 min.

Fertilizer only pays off if you actually harvest sooner - if you plant overnight and collect in the morning, skip it.

## Patreon perks

Donator tiers stack a profit boost and a grow-time speed boost on every crop. The profit boost multiplies your **profit** - the margin between what you paid for the seed and what it sells for - not the gross sale price:

| Tier | Name | Profit boost | Grow speed |
|---|---|---|---|
| Tier 1 | DONATOR | +15% | +10% |
| Tier 2 | CHILL | +25% | +15% |
| Tier 3 | EPIC | +30% | +20% |
| Tier 4 | SUPER | +50% | +25% |
| Tier 5 | MEGA | +65% | +30% |
| Tier 6 | ULTIMATE | +80% | +35% |
| Tier 7 | CRAZY | +100% (2×) | +40% |
| Tier 8 | GODLY | **+200% (3× profit)** | **3× faster (33% grow time)** |

Donators (T1+) also unlock **auto-replant** in farm settings - your crops auto-harvest and replant on a small profit tax.

## Random events

A daily/randomly-firing event system can buff or debuff currently-planted crops:

| Effect | What happens |
|---|---|
| **Speed boost** | Crops finish X hours sooner |
| **Speed penalty** | Crops take X hours longer |
| **Profit boost** | Increases your profit by % |
| **Profit penalty** | Decreases your profit by % |

Like Patreon boosts, event effects scale your **profit margin**, not the gross sale price - so even the worst run of penalty events can flatten a harvest's profit but will never sell a crop for less than you paid for the seed.

Events only affect crops that were **already planted** when they trigger - empty fields = no impact. Use [`/farming-events`](events.md) to see recent events and whether they hit your crops.

## Commands

- [`/farming`](farming.md) - Open your farm interface
- [`/farming-events`](events.md) - Recent events and your impact
- [`/farming-stats`](stats.md) - Detailed farming stats and totals
- [Scratch farm boosts](../../economy/scratch/index.md) - Free time reductions from scratch cards

## Notes

- **100 crops per slot** maximum.
- Crops only spoil if you ignore them indefinitely; harvest when ready.
- Very large farms (1000+ crops) get a longer harvest timeout to prevent timeouts.
- Use [`/farm-cleanup`](#) (20s cooldown) if your farm gets stuck or laggy.
- Scratch card **farm boosts** can shave 60–360 minutes off your current crops' grow time - see [`/scratch open`](../../economy/scratch/open.md).
