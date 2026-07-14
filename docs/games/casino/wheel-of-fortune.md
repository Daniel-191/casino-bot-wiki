# /wheel-of-fortune

Spin an 8-segment wheel for outcomes from total loss to a progressive jackpot. The jackpot grows from every player's bet until someone hits it.

## Description

You bet, the wheel spins through a four-frame animation, and the pointer settles on one of 8 segments. Each segment has a fixed weight (probability) and payout multiplier. The **Jackpot** segment pays the entire current jackpot pool - which scales with your bet and the global pool.

## Required Fields

- **bet** - Amount to wager.

## Usage

`/wheel-of-fortune [bet]`

## Examples

`/wheel-of-fortune 100k`
`/wheel-of-fortune 5m`
`/wheel-of-fortune max`

## Wheel segments

| Segment | Multiplier | Approx. weight |
|---|---|---|
| <:bag_of_money:1375759016759922720> **Jackpot** | 30–50× (dynamic) | ~0.01% |
| 🌟 Super Win | 12× | ~0.18% |
| 💎 Big Win | 5× | ~0.95% |
| ✨ Small Win | 2× | ~6.8% |
| 🎲 Mini Win | 1.2× | ~11.5% |
| 🔄 Breakeven | 1× (bet returned) | ~14% |
| 📉 Small Loss | 0.4× (40% back) | ~31% |
| 💔 Loss | 0× (full loss) | ~35.6% |

So **~67%** of spins lose money, ~14% break even, and ~19% win something.

## Jackpot pool

- Starts at **$10,000**.
- Each bet contributes **1%** of the bet to the pool.
- The Jackpot multiplier scales with bet size: between **30×** and **50×**.
- When hit, the pool resets to $10,000 and the win is **announced server-wide**.

## Notes

- **Cooldown:** 4 seconds.
- Win/loss streak tracker shows hot/cold messaging after 2+ wins or losses.
- Use [`/wheel-stats`](../../economy/money-management/stats.md) (run `/wheel-stats` directly) to see your spins, win rate, ROI, and best streak.
- Bigger bets → bigger jackpot multiplier → larger absolute jackpot payouts.
