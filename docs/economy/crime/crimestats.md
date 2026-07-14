# /crimestats

Browse the success rates, payouts, and risk profiles of every crime type without committing to one.

## Description

Opens the Criminal Intelligence panel - a read-only view of all four crime tiers with detailed breakdowns: success probability, reward range, loss range, bonus chance, bonus multiplier, heat level, and phase-by-phase descriptions.

This is the planning tool. Use it to figure out which crime fits your risk tolerance before running [`/crime`](crime.md).

## Usage

`/crimestats`

## What it shows

For each crime type:

- **Success Rate** - % chance the crime succeeds
- **Reward Range** - min/max money payout on success
- **Loss Range** - min/max money loss on failure
- **Bonus Event Chance** - % chance a successful crime rolls a bonus multiplier
- **Bonus Multiplier** - how much the bonus event multiplies the reward
- **Heat Level** - police attention indicator (1–5 scale, informational)
- **Phases** - each step the operation goes through

## Expected Value formula

```
EV = (success_rate × avg_reward) - (fail_rate × avg_loss)
```

Use this to compare crimes objectively. Bonus events skew real-world EV higher than the base formula.

## Notes

- **No cooldown** - check anytime, doesn't affect your `/crime` cooldown.
- This is purely informational; it doesn't run any crime or change your stats.
- Pair with [`/crime`](crime.md) once you've decided on a target.
