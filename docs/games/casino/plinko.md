# /plinko

Buy plinko balls at a fixed cost each, drop them all at once, and let each ball roll into a multiplier slot. High variance - most balls lose, a rare few hit massive multipliers.

## Description

Plinko uses a **fixed cost per ball** instead of a free-form bet. You pick how many balls to buy (1–10000), then click **DROP BALLS** to resolve them all at once. Each ball lands on a multiplier between **0.1×** (big loss) and **100×** (jackpot).

## Required Fields

- **balls** - Number of balls to buy (1 to 10000).

## Usage

`/plinko [balls]`

## Examples

`/plinko 1`
`/plinko 100`
`/plinko 1000`

## Pricing

- **Cost per ball:** $1,000 (fixed)
- **Total cost:** `1000 × balls`

So `/plinko 1000` costs $1M up front.

## Multiplier table

Each ball independently rolls one of these multipliers:

| Multiplier | Approx. probability | Tier |
|---|---|---|
| 0.1× | 35% | Big loss |
| 0.3× | 28% | Medium loss |
| 0.5× | 20% | Small loss |
| 0.8× | 10% | Minor loss |
| 1.2× | 5% | Small win |
| 2.0× | 1.5% | Medium win |
| 5.0× | 0.4% | Good win |
| 10.0× | 0.08% | Great win |
| 25.0× | 0.03% | Huge win |
| 50.0× | 0.01% | Massive win |
| **100.0×** | 0.005% | Jackpot |

So **about 93%** of balls return less than your cost, but the heavy upside compensates over many drops.

## Streak adjustments

The game tracks recent results across drops:

- **3 losses in a row** boost a tiny chance (~10%) of a small comeback ball.
- **Any recent win** sharply raises (~90%) the chance the next ball loses.

## Notes

- **Cooldown:** 4 seconds.
- **Drop is one click** - all balls resolve simultaneously, you can't cash out mid-drop.
- Net profit/loss is shown along with a per-multiplier breakdown.
- Massive announcements only trigger when net profit is large.
- For a single ball expected return: roughly $700–$800 per $1,000 spent (heavy variance, dominated by jackpots).
