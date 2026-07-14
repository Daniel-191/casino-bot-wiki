# /roulette

American roulette - bet on color, number, range, dozens, or basket. The wheel has **0**, **00**, and **1–36**.

## Description

You place a bet, then choose one of 14 betting options from the buttons (or pick a custom number 0–36). The wheel spins with an animation, and a number is drawn.

Greens (`0` and `00`) get a slightly elevated draw rate (~3% each instead of the usual ~2.7%) to give the house its edge.

## Required Fields

- **bet** - Amount to wager (placed when you run the command).

## Usage

`/roulette [bet]`

## Examples

`/roulette 100k`
`/roulette 5m`
`/roulette max`

## Bet types & multipliers

| Bet | Coverage | Multiplier |
|---|---|---|
| **Red** | 18 numbers | 1.75× |
| **Black** | 18 numbers | 1.75× |
| **Even** | 1–36 even | 1.75× |
| **Odd** | 1–36 odd | 1.75× |
| **1–18** | Low half | 1.75× |
| **19–36** | High half | 1.75× |
| **1st Dozen** | 1–12 | 1.95× |
| **2nd Dozen** | 13–24 | 1.95× |
| **3rd Dozen** | 25–36 | 1.95× |
| **Basket** | 0, 1, 2, 3 | 5.75× |
| **Green (0)** | Single | 10× |
| **Double zero (00)** | Single | 10× |
| **Choose Number** | Single 0–36 | 10× |

(Note: the `Choose Number` modal accepts 0–36, not 00.)

## Wheel layout

- **Red numbers:** 1, 3, 5, 7, 9, 10, 12, 14, 16, 18, 19, 21, 23, 25, 27, 32, 34, 36
- **Black numbers:** the rest of 1–36
- **Green:** 0 and 00

## Notes

- **Cooldown:** 3 seconds.
- One bet per spin - pick your option, animation plays, result is shown.
- **180-second game timer** - if you don't bet in time the lobby cleans up.
- 0 and 00 are the **only ways the house wins** on Red/Black/Even/Odd/range bets.
- Best long-term odds: outside bets (Red/Black/Even/Odd/halves) at 1.75×. Worst: single number / green at 10× (true odds would be ~37×).
