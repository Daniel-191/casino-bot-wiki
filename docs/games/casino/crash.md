# /crash

Watch a multiplier climb in real time - cash out before it crashes.

## Description

You place a bet and a multiplier starts at **1.00×** and climbs. At some random moment the multiplier "crashes" and the game ends. If you've already cashed out, you keep `bet × multiplier_at_cashout`. If you haven't, you lose the bet.

The crash point is determined the moment the round starts (you can't see it). The minimum cashout multiplier is around **1.05×–1.35×** (varies per round).

## Required Fields

- **bet** - Amount to wager.

## Usage

`/crash [bet]`

## Examples

`/crash 100k`
`/crash 5m`
`/crash max`

## How it works

1. Bet is deducted on round start.
2. Multiplier begins climbing - slow at first, faster as it grows.
3. The **CASH OUT** button is disabled briefly at the start (1–3s window).
4. Once enabled, click it any time to lock in `bet × current multiplier`.
5. If the multiplier crashes before you click, you lose the bet.

## Crash zones (rough distribution)

The bot heavily weights the crash point near the early-cashout zone:

| Range | Approximate frequency |
|---|---|
| 1.01× – 1.20× | ~15% (instant crash) |
| 1.20× – 1.50× | ~55% (the danger zone) |
| 1.50× – 2.00× | ~15% |
| 2.00× – 3.00× | ~10% |
| 3.00× – 5.00× | ~5% |

So most rounds resolve below 1.5× - high multipliers exist but are rare.

## Notes

- **Cooldown:** 5 seconds.
- **Minimum cashout:** ~1.05× (game-dependent - sometimes higher for repeat early-cashout players).
- **Cashout window** opens 0.1–3.5 seconds after the round starts; you can't cash out before the button activates.
- Frequent low-multiplier cashouts can shift future rounds against you (the game tracks behavior).
- Game errors auto-refund your bet.
- Pure-luck game - no strategy beats the underlying randomness, but cashing out at lower multipliers loses less per round on average.
