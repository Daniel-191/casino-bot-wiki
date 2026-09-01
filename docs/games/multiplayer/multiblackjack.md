# /multiblackjack

Multi-seat blackjack table - up to 7 players sharing one dealer. Each player plays their own hand independently against the same dealer.

## Description

The host opens a lobby with their bet. Up to 7 total players can join (each picks their own bet). When the table starts, every player is dealt their own hand. Players take turns hitting/standing/doubling/splitting against a single shared dealer.

Each player wins or loses **their own bet** independently against the dealer - beating other players doesn't matter. Standard blackjack rules apply (3:2 BJ payout, dealer hits soft 17, splits/doubles allowed).

For solo blackjack, see [`/blackjack`](../casino/blackjack.md).

## Required Fields

- **bet** - Host's bet (each joiner picks their own bet when joining).

## Optional Fields

- **max_players** - Maximum players allowed at the table (1–7, default `7`).

## Usage

`/multiblackjack [bet] [max_players]`

## Examples

`/multiblackjack 100k`
`/multiblackjack 1m max_players:4`
`/multiblackjack 5m max_players:7`

## Lobby flow

1. Host runs the command - host's bet is deducted and the lobby is posted.
2. Other players click **Join** and pick their own bet.
3. Lobby has a **5-minute** countdown timer.
4. Host can **Start** anytime; otherwise the table deals itself the moment the timer ends, with whoever is seated.
5. If the timer ends with nobody at the table, all bets are refunded.

## Game flow

1. Each player is dealt 2 cards (their hand is theirs alone).
2. Dealer shows one face-up + one hole card.
3. Players take turns acting on their hand: **Hit / Stand / Double / Split**.
4. After all players finish, the dealer plays out (hits soft 17).
5. Each player's hand is settled independently against the dealer's final hand.

## Payouts

| Result | Payout |
|---|---|
| Beat the dealer | 1:1 |
| Natural blackjack (and dealer doesn't have one) | 3:2 |
| Push (tie with dealer) | Bet returned |
| Dealer wins | Lose bet |

Splits and doubles use full extra bets and pay 1:1.

Doubling down is blocked if it would take a single hand's stake above the max bet, so a max-bet hand can't be doubled. **Play Again** always re-stakes your original bet, not a bet that grew from doubling.

## Notes

- **Cooldown:** 5 seconds (host).
- **Players:** 1–7 (max configurable per game).
- **Timer:** 5-minute lobby; the table always deals itself when the timer ends.
- **Each player can only be in one game at a time** - GameManager enforces this for everyone at the table.
- **Only one Multiplayer Blackjack per channel** at a time. If a table stalls, the channel frees itself automatically and the bets are refunded.
- On error, all bets are refunded automatically.
- For solo play, see [`/blackjack`](../casino/blackjack.md).
