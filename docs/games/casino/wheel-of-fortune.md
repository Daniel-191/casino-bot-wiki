# /wheel-of-fortune

Spin a 24-pocket wheel for outcomes from total loss to a progressive jackpot. Pick a risk profile, chase the jackpot pool that every player feeds, and re-spin straight from the result message.

## Description

You bet, the pointer sweeps the wheel through a slowing animation, and it settles in one pocket. Every segment has a weight (probability) and a payout multiplier. Three risk modes reshape the swings **without changing the house edge** — all three return **92.4%** over the long run.

## Required fields

- **bet** — Amount to wager.

## Optional fields

- **risk** — `Low`, `Normal` (default) or `High`.

## Usage

`/wheel-of-fortune [bet] [risk]`

## Examples

`/wheel-of-fortune 100k`
`/wheel-of-fortune 5m risk:High`
`/wheel-of-fortune max risk:Low`

## Risk modes

Same 92.4% return in every mode — only the shape of the distribution changes.

| | Low | Normal | High |
|---|---|---|---|
| Spins that profit | 30.9% | 27.0% | 14.6% |
| Spins that return something | 75.9% | 65.0% | 30.6% |
| Spins that lose everything | 24.1% | 35.1% | 69.4% |
| Top multiplier | 40× + pool | 40× + pool | 60× + pool |

### Low risk

| Segment | Multiplier | Weight |
|---|---|---|
| <:bag_of_money:1375759016759922720> Jackpot | 40× + the whole pool | 0.05% |
| 🏆 Mega Win | 10× | 0.30% |
| 🌟 Super Win | 5× | 1.20% |
| 💎 Big Win | 2.5× | 5.00% |
| 🔄 Bonus Spin | free re-spin | 5.00% |
| ✨ Small Win | 1.4× | 19.37% |
| ⚖️ Breakeven | 1× | 15.00% |
| 📉 Small Loss | 0.7× | 30.00% |
| 💔 Loss | 0× | 24.08% |

### Normal

| Segment | Multiplier | Weight |
|---|---|---|
| <:bag_of_money:1375759016759922720> Jackpot | 40× + the whole pool | 0.15% |
| 🏆 Mega Win | 15× | 0.60% |
| 🌟 Super Win | 7× | 1.60% |
| 💎 Big Win | 3× | 5.00% |
| 🔄 Bonus Spin | free re-spin | 4.00% |
| ✨ Small Win | 1.5× | 15.60% |
| ⚖️ Breakeven | 1× | 8.00% |
| 📉 Small Loss | 0.5× | 30.00% |
| 💔 Loss | 0× | 35.05% |

### High risk

| Segment | Multiplier | Weight |
|---|---|---|
| <:bag_of_money:1375759016759922720> Jackpot | 60× + the whole pool | 0.20% |
| 🏆 Mega Win | 30× | 0.60% |
| 🌟 Super Win | 12× | 1.50% |
| 💎 Big Win | 5× | 3.50% |
| 🔄 Bonus Spin | free re-spin | 2.00% |
| ✨ Small Win | 2.5× | 6.81% |
| ⚖️ Breakeven | 1× | 4.00% |
| 📉 Small Loss | 0.25× | 12.00% |
| 💔 Loss | 0× | 69.39% |

## Bonus Spins

Landing on **Bonus Spin** doesn't settle the round — the wheel simply goes again on the same stake, for free. Chains are capped at **3**; from the **second** chained bonus onward the final payout is **doubled**. If the cap is reached on another Bonus Spin, the bet is returned.

## Luck boost (pity)

After **8** spins in a row that fail to return your bet, the wheel starts tilting your way: weight moves out of the total-loss pocket and into the segments that pay something. It ramps over the next **10** spins to a ceiling of **98.5%** return, and clears the instant a spin returns your stake or better.

A partial return still counts as a losing spin for this purpose. `/wheel-stats` shows the boost while it is active.

## Progressive jackpot

- Seeded at **$1,000,000**, and it persists across restarts.
- Every spin adds **1%** of its bet to the pool.
- Hitting the Jackpot pocket pays the segment multiplier (40× or 60×) **plus the entire pool** — so a jackpot is always the biggest win on the wheel, never a net loss.
- The pool then reseeds to $1,000,000, and the win is announced in the channel it happened in.
- Check it any time with [`/wheel-jackpot`](#wheel-jackpot), which also shows the last winner.

## Re-spinning

The result message carries three buttons, live for 2 minutes and usable only by the player who spun:

- **Spin Again** — same bet, same risk mode.
- **Double It** — twice the bet.
- **Half It** — half the bet.

## /wheel-jackpot

Shows the current pool, how it grows, the jackpot odds and multiplier for each risk mode, the last winner, and how many times the jackpot has ever been hit.

## /wheel-stats

Your lifetime wheel record — spins, wins, win rate, total wagered, net profit, ROI, biggest single win, Bonus Spins earned, jackpots hit, best and worst streaks, and any active luck boost. These persist across restarts.

## Notes

- **Cooldown:** 4 seconds.
- The bet is taken before the wheel starts turning; if anything fails mid-spin it is refunded in full.
- The pocket ring shown in the animation is the wheel's physical layout and is roughly proportional to the weights — the tables above are the real odds. The "So close!" line only appears when a Jackpot or Mega Win pocket genuinely sat next to where the pointer stopped.
