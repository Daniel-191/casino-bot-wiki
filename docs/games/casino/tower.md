# /tower

Stack blocks one at a time - each block adds to the multiplier, but a failed block topples the tower and you lose the bet.

## Description

You bet, and the bot picks one of 8 tower types (cosmetic - affects stability and multiplier slightly). Each click of **Add Block** rolls against a success chance that **drops as the tower grows taller**. Successful blocks raise your multiplier; a failed block ends the run for $0.

You can **Cash Out** at any time after the first block to lock in `bet × current multiplier`.

## Required Fields

- **bet** - Amount to wager.

## Usage

`/tower [bet]`

## Examples

`/tower 100k`
`/tower 5m`
`/tower max`

## Tower types (random)

Each game picks one tower type. Higher stability = better success per block, higher multiplier boost = bigger payouts:

| Tower | Stability | Multi boost |
|---|---|---|
| 🪨 Stone | 1.10 | 0.90× |
| <:Star1:1341147145410969712> Divine | 1.05 | 1.00× |
| 🏆 Golden | 1.00 | 1.10× |
| <:Diamond:1375484760071340062> Crystal | 0.95 | 1.05× |
| 🌑 Shadow | 0.90 | 1.15× |
| 👁️ Eldritch | 0.88 | 1.18× |
| 🔮 Glass | 0.85 | 1.20× |
| ☠️ Corrupted | 0.80 | 1.25× |

So Corrupted Tower is the highest-reward, lowest-success build.

## Mechanics

- **Base success** starts around 85% and drops by ~2.5% per block (modified by tower stability).
- The tower has a hidden **unstable threshold** at height 5–8. Past that, success drops faster and stability decays each block.
- Tiny **critical failure** chance (~1% per block past height 4) - even a high-success roll can collapse.
- **Multiplier growth** is roughly +0.10–0.13 per successful block, scaled by tower type.
- Cashout has a small **collapse risk** (capped at 10%) - extremely rare but possible at extreme heights.
- Cashout payout uses random ±5% variance plus a possible **cashout event**: lucky bonus, treasure find, market fee, or tower tax.

## Notes

- **Cooldown:** 3 seconds.
- **Cash Out** requires at least 1 successful block.
- **180-second game timer**.
- Pure-luck game - there's no skill in clicking; just deciding when to stop.
- Higher towers = exponentially higher reward but exponentially higher collapse chance. Most profitable strategy is cashing out around heights 4–6.
