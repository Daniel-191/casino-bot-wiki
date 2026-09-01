# Scratch Tickets

Scratch cards are reward tickets you earn from voting (and weekly claims for donators). Open them with `/scratch open` to win money, farm boosts, lottery tickets, jackpots, or even Patreon gift memberships.

## How you get cards

| Source | Cards |
|---|---|
| **Vote for the bot** (`/vote`) | 1 card per vote |
| **Weekly claim** (`/scratch weekly-scratch`) | 10 cards/week (donator) - 15/week for tier 8 (GODLY) |
| **Gifted from another player** (`/scratch pay`) | Variable |

Money rewards scale with your **base vote reward** - the higher your vote streak, the bigger every money-prize multiplier becomes.

## Command list

| Command | Description |
|---|---|
| [`/scratch open`](open.md) | Open one or more cards |
| [`/scratch inventory`](inventory.md) | View your stored non-money rewards |
| [`/scratch history`](history.md) | Paginated history of all scratch sessions |
| [`/scratch stats`](stats.md) | View totals + best win for any user |
| [`/scratch pay`](pay.md) | Gift unopened cards to another user |
| [`/scratch pay-history`](pay-history.md) | View cards sent and received |
| [`/scratch weekly-scratch`](weekly-scratch.md) | Donator-only free weekly cards |

## Rarity tiers

Every card draws one reward weighted by rarity:

| Rarity | Combined chance | What you can win |
|---|---|---|
| **Common** | ~65% | 0.5×–1.25× vote money, small farm boost (60–75 min), 1 lottery ticket |
| **Uncommon** | ~22% | 1.5×–2.5× money, 90–105 min farm boost, 2 lottery tickets, **DONATOR** Patreon gift (very rare) |
| **Rare** | ~10% | 3×–4.5× money, 120–150 min farm boost, 3 lottery tickets, DONATOR/CHILL gifts |
| **Epic** | ~2.8% | 6×–8× money, **10× jackpot**, 180–210 min farm boost, 5 lottery tickets, CHILL/EPIC/SUPER/MEGA gifts |
| **Legendary** | ~0.2% | **15× jackpot**, **25× MEGA jackpot**, 240–360 min farm boost, 10 lottery tickets, SUPER → GODLY gifts |

## Reward types

- **Money** - instant money, calculated as `base_vote_reward × multiplier`.
- **Farm Boost** - reduces crop grow time by 60–360 minutes (3 hours = 180 min epic). Stored if no crops planted.
- **Lottery Ticket** - automatically added to the current lottery draw (1, 2, 3, 5, or 10 tickets).
- **Jackpot** - large money prize (10× or 15× vote reward).
- **Mega Jackpot** - 25× vote reward (legendary only).
- **Patreon Gift** - 7 days of the rolled rank (DONATOR → GODLY). Banked into `/stored-patreon`; redeem it yourself whenever you want it to start.

## Notes

- Each card opens **one** reward.
- Money rewards apply instantly. Non-money rewards (farm boosts, Patreon gifts) can be **used now** or **stored** in your inventory for later.
- Patreon gifts are banked as rank days in `/stored-patreon` rather than starting straight away, so a win is never wasted while you already hold a higher rank. No support ticket is involved.
- See [`/vote`](../earning/vote.md) to earn cards.
