# /poker

6-card draw poker against the dealer. You're dealt 6 cards, choose which to discard, then the bot picks your best 5-card hand and compares it to the dealer's.

## Description

Place a bet. You receive 6 cards. Pick which (if any) to discard - they're replaced from the deck. Then the dealer reveals their 6 cards. The best 5-card poker hand from each side is compared; the higher rank wins.

Hand strength matters more than just winning - your **payout multiplier** scales with the rank of your hand.

## Required Fields

- **bet** - Amount to wager. Accepts shorthand or shortcuts.

## Usage

`/poker [bet]`

## Examples

`/poker 100k`
`/poker 5m`
`/poker max`

## Discard options

After the deal, you have three buttons:

- **Keep All Cards** - Stand pat with your initial 6.
- **Discard All Cards** - Replace all 6 cards.
- **Select Cards** - Pick exactly which cards to discard (any combination).

## Hand multipliers

Multipliers are paid on win (in addition to your bet returned):

| Hand | Multiplier | Notes |
|---|---|---|
| Royal Flush | 60× | The jackpot |
| Straight Flush | 25× | |
| Four of a Kind | 6× | |
| Full House | 2.8× | |
| Flush | 1.8× | |
| Straight | 1.4× | |
| Three of a Kind | 1× | |
| Two Pair | 0.45× | |
| Pair | 0.3× | |
| High Card | 0.2× | Scrappiest win |

So a **Royal Flush** on a $100K bet pays $6M profit ($6.1M total return). The big hands stay exciting, and every win — even a high card — now turns a profit. Poker sits at roughly a 50% win rate with a modest house edge overall.

## Tie / loss

- **Tie** (same rank and tiebreakers): bet returned.
- **Dealer wins**: bet lost.

## Notes

- **Cooldown:** 3 seconds.
- **Turn timer:** 120 seconds to finalize your discards. Auto-resolves with all cards kept on timeout.
- **Dealer advantage:** ~35% chance the dealer is given a favored hand for the comparison. Only applies when your hand is below a full house — strong hands are always compared against a fair random dealer hand.
- **Single deck** - your discards and dealer's hand are dealt from the same shuffled remainder.
- "Play Again" button appears after each hand for fast re-rolls at the same bet.
- Game errors auto-refund the bet.
