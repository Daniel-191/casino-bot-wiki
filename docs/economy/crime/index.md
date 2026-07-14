# Crime System

Pull off heists for high-reward income - at the cost of police heat and the chance of losing money on a botched job. Four crime tiers from low-risk pickpocketing up to high-stakes crypto exchange hacks.

## How crimes work

Run [`/crime`](crime.md) to open the operations panel and pick a target. Each crime plays out across **multiple animated phases** (3–5 phases depending on tier) before resolving as a success or failure. There's also a **bonus chance** on every success that multiplies your payout.

Use [`/crimestats`](crimestats.md) to study odds and payouts before you commit.

## Crime tiers

| Crime | Success | Payout | Loss on fail | Bonus chance | Bonus mult | Heat |
|---|---|---|---|---|---|---|
| **Pickpocket** | 85% | $500K – $1.2M | $10K – $50K | 25% | 2.5× | 1 |
| **Bank Heist** | 65% | $5M – $15M | $200K – $500K | 15% | 4× | 4 |
| **Casino Heist** | 55% | $8M – $25M | $300K – $800K | 12% | 5× | 4 |
| **Crypto Hack** | 35% | $25M – $100M | $1M – $3M | 3% | 10× | 5 |

Heat level is informational - it represents police attention, not a hard mechanic.

## Expected value

Quick reference for picking a crime by EV:

```
EV = (success_rate × avg_reward) - (fail_rate × avg_loss)
```

| Crime | EV (no bonus) |
|---|---|
| Pickpocket | ~$719K |
| Bank Heist | ~$6.4M |
| Casino Heist | ~$8.9M |
| Crypto Hack | ~$20M |

Bonuses push these higher; the listed EV is conservative.

## Commands

- [`/crime`](crime.md) - Run a crime
- [`/crimestats`](crimestats.md) - Browse odds and payouts before committing

## Cooldowns and tax

- **Cooldown:** 1 hour (Patreon T3+ reduces to ~39 minutes).
- A portion of crime profits is **taxed and added to the lottery pool** - your crimes fund the community jackpot.
