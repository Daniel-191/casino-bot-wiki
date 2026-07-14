# /horse-race

Pick one of 5 horses, place a bet, and watch a live animated race. Better-odds horses pay less; underdogs can pay up to **6×** your bet.

## Description

You pick horse #1 through #5 and a bet amount. The race plays out with a live progress bar - horses advance with semi-random speeds based on their base odds, stamina, and chaos events. First past the finish line wins.

## Required Fields

- **bet** - Amount to wager.
- **horse** - Horse number to bet on (1–5).

## Usage

`/horse-race [bet] [horse]`

## Examples

`/horse-race 100k 1`
`/horse-race 5m 5`
`/horse-race max 3`

## The horses

| # | Name | Emoji | Odds (multiplier) |
|---|---|---|---|
| 1 | Thunder | 🐎 | 2.5× (favorite) |
| 2 | Storm | 🏇 | 3.2× |
| 3 | Flash | 🐴 | 4.0× |
| 4 | Star | 🦄 | 4.8× |
| 5 | Wind | 🐪 | 6.0× (longshot) |

A $100K bet on Wind (#5) pays **$600K** if it wins.

## Race mechanics

- **Track length:** 20 squares.
- **Race duration:** 10–16 seconds (random).
- **Per-step movement:** base speed × random 0.5–1.9 × stamina × chaos events.
- **Big events** (~25% per step): can wildly speed up or slow a horse.
- **Chaos events** (~18% per step): another random multiplier on top.
- **Final sprint** triggers if no winner by the timer - boosts every horse with high random variance.
- Ties are broken with a random offset, slightly favoring the underdog.

So while the favorite has a real edge, **upsets are common**.

## Notes

- **Cooldown:** 5 seconds.
- Pre-race embed shows the lineup, your horse, and potential winnings before the race starts.
- Hit **Start Race** to begin (if you walk away, the lobby cleans up after 60s).
- Winnings are credited at the end with a full results breakdown.
