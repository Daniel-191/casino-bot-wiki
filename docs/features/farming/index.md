# Farming System

Plant crops, wait for them to grow on real-world timers, and harvest for a profit. Farming is Paradise Bot's main passive income system - buy seeds with money you already have, walk away, come back hours later, sell the produce for more than you paid.

## How it works

1. Run **`/farming`** to open your farm.
2. Click **Plant** to pick a crop, choose how many to plant, optionally apply fertilizer, and pick which slot(s).
3. Wait - every crop has its own real-time timer (27 hours for wheat up to 57 hours for diamond melon).
4. Once ready, click **Harvest** to collect your money.
5. Optionally **Replant** to refill the same slots with the same crops + fertilizers in one click.

## Crops

11 crop tiers, each with a base price, sell price, and grow time. Profit margins range from 3% (corn) to 8% (watermelon, diamond melon):

| Tier | Crop | Buy | Sell | Grow time | Profit |
|---|---|---|---|---|---|
| **Beginner** | Wheat | $5M | $5.2M | 27 h | ~4% |
| | Corn | $20M | $20.6M | 29 h | ~3% |
| | Carrot | $10M | $10.35M | 28 h | ~3.5% |
| **Mid-tier** | Potato | $15M | $15.75M | 31 h | ~5% |
| | Tomato | $40M | $42.4M | 32 h | ~6% |
| | Pumpkin | $150M | $159M | 34 h | ~6% |
| **High-tier** | Grapes | $1.2B | $1.272B | 38 h | ~6% |
| | Watermelon | $5B | $5.4B | 41 h | ~8% |
| **Premium** | Golden Apple | $20B | $20.8B | 49 h | ~4% |
| | Diamond Melon | $100B | $108B | 57 h | ~8% |

Profits look small per crop - but you can plant **up to 100 crops per slot**, and slots run in parallel.

## Fertilizers

Optional speed-up purchased per planting:

| Fertilizer | Cost / crop | Speed boost |
|---|---|---|
| **Basic** | $10M | 20% faster (0.8× grow time) |
| **Super** | $100M | 40% faster (0.6×) |
| **Mega** | $2B | 60% faster (0.4×) |

Fertilizer cost is per-crop, paid up front when planting.

## Patreon perks

Donator tiers stack a profit boost and a grow-time speed boost on every crop:

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
| **Profit boost** | Increases sell price by % |
| **Profit penalty** | Decreases sell price by % |

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
