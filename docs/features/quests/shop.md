# Quest Shop

Utility and recovery items bought with **quest tokens**. Open it from the **Shop** tab of [`/quests`](quests.md).

## Description

The shop never sells currency, and nothing in it can be bought with money - tokens are the only way in. This keeps it worth exactly the same to a new player and to a trillionaire.

There are **11 items** across five categories. Prices below include a rough cost in **days of play**, against a budget of ~211 tokens per day - every quest completed plus the [login calendar](index.md#login-calendar). See [quest tokens](index.md#quest-tokens) for the full breakdown.

## Everything in the shop at a glance

| Item | Price | Category | Limit | Time to afford |
|---|---|---|---|---|
| [Vote Streak Restore](#anchor-items) | 5,000 | Anchor | 2 per account, ever | ~24 days |
| [Extra Heist Attempt](#permanent) | 4,000 | Permanent | Once, ever | ~19 days |
| [Speedy](#permanent) | 3,000 | Permanent | Once, ever | ~14 days |
| [Pet Revival](#permanent) | 3,000 | Permanent | Once, ever | ~14 days |
| [Auto-Feeder](#permanent) | 2,500 | Permanent | Once, ever | ~12 days |
| [Irrigation](#permanent) | 2,000 | Permanent | Once, ever | ~10 days |
| [Rob Immunity](#recovery) | 500 | Recovery | 1 per week | ~2.4 days |
| [Heist Weekend](#boosts) | 1,200 | Boost | 1 per week | ~5.7 days |
| [Heist Pass](#boosts) | 450 | Boost | 1 per day | ~2.1 days |
| [Scratch Card](#tickets) | 80 | Ticket | 10 per day | ~9 hours |
| [Cooldown Reset](#boosts) | 60 | Boost | 5 per day | ~7 hours |

The shop is paginated **6 items to a page**, but the picker below the embed lists **everything** - you can buy any item from any page.

## Anchor items

| Item | Price | Limit | Effect |
|---|---|---|---|
| **Vote Streak Restore** | 5,000 (~24 days) | **2 per account, ever** | Restores a [vote streak](../economy/voting.md) lost in the last **14 days** back to your highest-ever streak |

The Shop tab shows how many you have left as `[1/2]` next to the name.

!!! warning "Vote Streak Restore is limited for life"
    Two purchases per account, permanently. It exists as a mercy for a streak you genuinely lost, not as a strategy.

It is refused - with **no tokens spent** - if:

- you have no vote history at all (*"no vote streak"*)
- your current streak is already at your best, so nothing was lost (*"streak still running"*)
- your last vote was more than **14 days** ago (*"outside restore window"*)

On success your vote timestamps are also pushed forward, so the restored streak does not immediately lapse against the 48-hour grace period.

## Permanent

Bought once and kept forever. These are the only items in the shop that keep working after you close the menu, and each can be bought a single time per account.

Like everything else here they buy convenience rather than income, so they stay worth about the same to a new player and to a trillionaire.

| Item | Price | Effect |
|---|---|---|
| **Extra Heist Attempt** | 4,000 (~19 days) | **+1** [heist](../../games/heists/index.md) attempt every day, for good |
| **Speedy** | 3,000 (~14 days) | Heist join cooldown permanently cut by **40%** (you wait 60% of the normal time) |
| **Pet Revival** | 3,000 (~14 days) | Brings a dead [pet](../pets/index.md) back and waives its funeral fee |
| **Auto-Feeder** | 2,500 (~12 days) | Your pet's hunger falls at **half speed** |
| **Irrigation** | 2,000 (~10 days) | Every [crop](../farming/index.md) grows **10% faster** |

Owning all five costs **14,500 tokens** - about **69 days** of perfect play.

An upgrade you already own stays listed, marked **owned**, rather than disappearing.

!!! note "Extra Heist stacks with everything"
    It adds to your Patreon limit and your vote bonus rather than replacing either, and it counts for solo heists as well as group ones. It also stacks with Heist Pass and Heist Weekend - own all three at once and you are +6 heists for the day.

!!! warning "Pet Revival needs a pet you have not buried yet"
    It works while your pet is dead but its funeral fee is still unpaid — you get the same pet back, at the level, XP and lifetime earnings it had. Once you pay the fee the pet is gone for good and there is nothing left to revive, so the purchase is refused (*"no dead pet"*) and no tokens are spent.

!!! note "Irrigation and the Auto-Feeder apply retroactively"
    Grow time and hunger decay are both worked out fresh from a timestamp every time your farm or pet is checked, so buying either immediately affects whatever is already in the ground or already hungry.

## Recovery

| Item | Price | Limit | Effect |
|---|---|---|---|
| **Rob Immunity** | 500 (~2.4 days) | 1 per week | Nobody can rob you for **24 hours** |

Anyone who runs `/rob` on you while it is up is turned away before anything is staked, and it costs them nothing but the command - no cooldown, no payment block.

The week resets Monday 00:00 UTC, alongside the weekly quests.

!!! note "Streak freezes are not sold here"
    They are earned only by [keeping days](index.md#streak-freezes) - 2 daily objectives each - up to 2 a week (Patreon: 3). There is no way to buy your way out of decay.

## Boosts

All time-limited — for the ones that never expire, see [Permanent](#permanent) above.

| Item | Price | Limit | Effect |
|---|---|---|---|
| **Cooldown Reset** | 60 (~7 hours) | 5 per day | Instantly clears your `/mine` cooldown so you can dig again right now |
| **Heist Pass** | 450 (~2.1 days) | 1 per day | **+2** heist attempts for the rest of today |
| **Heist Weekend** | 1,200 (~5.7 days) | 1 per week | **+3** heist attempts a day for **48 hours** |

Daily limits reset at 00:00 UTC; weekly limits reset Monday 00:00 UTC.

!!! warning "Heist Pass expires at midnight, not 24 hours later"
    It is tied to the daily heist reset rather than to when you bought it, so buying one late in the evening leaves very little time to use it. Buy it before you start playing, not after you hit the limit.

!!! note "Both heist boosts raise the limit, they do not refund an attempt"
    They add to your daily cap rather than giving back one you already spent, so buying either **before** you play is strictly better than buying it after.

## Tickets

| Item | Price | Limit | Effect |
|---|---|---|---|
| **Scratch Card** | 80 (~9 hours) | 10 per day | Adds [scratch cards](../../economy/scratch/index.md) to your stack, ready to open with `/scratch open` |

Five a day is **400 tokens** against an income of ~211 - the cap is above what you can sustainably afford on purpose.

This is the one item you can buy several of at once: picking it asks how many, up to whatever your tokens and the daily limit allow.

!!! note "Bought cards show up in `/scratch open`, not `/scratch inventory`"
    `/scratch inventory` holds the **rewards** you have already won from cards. Unopened cards live in your stack, which `/scratch open` shows and opens.

## Buying

1. Open `/quests` and click the **Shop** tab.
2. Pick an item from the dropdown.
3. If you could buy several of it right now, a box asks **how many**, with the most you can take in one go shown next to it. That most is the smaller of what your tokens cover and what your daily limit still allows.
4. A private confirmation step shows the total price. Nothing is spent until you press it.

Only **Scratch Card** ever asks for a quantity. Everything else is bought one at a time, because a second copy would do nothing: Cooldown Reset clears a cooldown that is already clear, Vote Streak Restore restores a streak that is already restored, and the permanent upgrades are owned for life once bought. Their daily and weekly limits still let you come back and buy another later - the shop just will not sell you two in the same breath.

Items sold more than once per period carry a **`[bought/limit]`** counter in the shop list, so you can see how much of today's or this life's allowance is left before you pick.

## Notes

- A purchase is **all-or-nothing**: if the effect cannot be applied, no tokens are spent and you get the reason back.
- Items you cannot currently buy stay visible with the reason shown (*limit reached*, *owned*, *outside restore window*…), so you can see what you are working toward. Items you simply cannot afford are **not** marked - the footer already shows your balance.
- Every token movement is logged to a ledger, so balances can always be reconciled.
- Purchases are permanent and cannot be refunded, traded or gifted.
