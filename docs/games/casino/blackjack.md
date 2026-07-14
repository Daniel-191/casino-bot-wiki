# /blackjack

Classic blackjack vs the dealer - hit, stand, double down, or split, and try to beat the house without busting.

## Description

You're dealt two cards face-up; the dealer gets one face-up and one face-down. Standard blackjack rules apply: get as close to 21 as possible without going over. Aces count as 1 or 11 (whichever is better), face cards = 10.

The dealer **peeks** for blackjack on Ace or 10-value showing, **hits soft 17**, and stands on hard 17+. Single-deck game.

## Required Fields

- **bet** - Amount to wager. Accepts shorthand (`k`, `m`, `b`, `t`) or shortcuts (`min`, `max`, `half`).

## Usage

`/blackjack [bet]`

## Examples

`/blackjack 100k`
`/blackjack 1m`
`/blackjack half`

## Player actions

| Action | When available | Effect |
|---|---|---|
| **Hit** | Always | Take another card |
| **Stand** | Always | End your turn |
| **Double Down** | Any 2-card hand (incl. after split) | Double your bet, take exactly one card |
| **Split** | Two cards of equal value | Split into two hands (max 4 splits) |

## Payouts

| Outcome | Payout |
|---|---|
| **Blackjack** (21 with 2 cards) | 3:2 (1.5× profit) |
| **Win vs dealer** | 1:1 |
| **Push** (tie) | Bet returned |
| **Loss / bust** | Bet lost |

If both you and the dealer have blackjack on the deal, it pushes.

## Notes

- **Cooldown:** 2 seconds (the fastest casino game).
- **Max splits:** 4 (so up to 4 separate hands).
- **Double after split:** allowed.
- **Dealer rules:** hits soft 17, stands on hard 17+, peeks for blackjack on Ace/10.
- **60-second turn timer** - if you don't act in time, you auto-stand on the current hand.
- Game errors automatically refund your bet.
- Strategy matters: blackjack rewards skilled play more than any other casino game.
