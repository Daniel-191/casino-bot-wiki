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
| Royal Flush | 40× | The jackpot |
| Straight Flush | 20× | |
| Four of a Kind | 6.5× | |
| Full House | 4× | |
| Flush | 2.5× | |
| Straight | 2× | |
| Three of a Kind | 1.5× | |
| Two Pair | 1.1× | Slight profit |
| Pair | 0.85× | Slight loss even on win |
| High Card | 0.5× | Half your bet back |

So a **Royal Flush** on a $100K bet pays $4M profit ($4.1M total return).

## Tie / loss

- **Tie** (same rank and tiebreakers): bet returned.
- **Dealer wins**: bet lost.

## Notes

- **Cooldown:** 3 seconds.
- **Turn timer:** 120 seconds to finalize your discards. Auto-resolves with all cards kept on timeout.
- **Dealer advantage:** ~30% chance the dealer is given a slightly favored hand for the comparison.
- **Single deck** - your discards and dealer's hand are dealt from the same shuffled remainder.
- "Play Again" button appears after each hand for fast re-rolls at the same bet.
- Game errors auto-refund the bet.
