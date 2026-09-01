# Quests & Combo Multiplier

Daily and weekly quests that build a **combo multiplier** on everything you earn from mining, fishing, fries deliveries, pet work and farming. Finish **2 of the 4** quests in a period, gain a stack and keep your streak. Stacks compound. Miss a period and they decay by one stack - and a streak freeze usually absorbs even that.

Quests also pay **quest tokens**, a separate currency spent in the [quest shop](shop.md).

## Core loop

1. Run [`/quests`](quests.md) to see your four daily quests and four weekly quests.
2. Play normally - progress tracks automatically, no claiming needed.
3. Finish **any 2 of the 4** dailies to bank a daily stack, keep your daily streak and earn a streak freeze. Same for the weeklies (no freeze on the weekly).
4. Clearing all four is optional - it pays a token bonus on top, nothing more.
5. Come back tomorrow. Stacks build; missing days takes them away.

## The combo multiplier

| Period | Per stack | Cap | Max bonus | Time to cap |
|---|---|---|---|---|
| **Daily** | +0.5% | 100 stacks | **+50%** | ~3 months |
| **Weekly** | +1.1% | 100 stacks | **+110%** | ~2 years |
| **Total** | | | **+160% (2.60×)** | **~2 years** |

The formula is simply:

```
multiplier = 1.0 + (daily_stacks × 0.005) + (weekly_stacks × 0.011)
```

Stacks are capped independently at 100 each, so the multiplier can never exceed **2.60×**.

### What it applies to

**Boosted:**

- **[Mining](../mining/index.md)** - ore value, applied when you mine it
- **[Fishing](../fishing/index.md)** - catch payouts
- **[Fries deliveries](../restaurants/index.md)** - delivery earnings
- **[Pets](../pets/index.md)** - work payouts
- **[Farming](../farming/index.md)** - crop sale value at harvest

**Not boosted:** casino games, robbery, heists, `/daily`, `/weekly`, `/monthly`, `/hourly`, voting, lottery, bank interest, transfers, property income.

!!! note "Mining bakes the bonus in at dig time"
    Your combo is applied to ore **the moment you mine it**, and that value is stored in your inventory. Hoarding ore to sell later at a higher multiplier does not work - the ore is worth whatever your combo was when you dug it up.

!!! note "Farming boosts the crop sale, not the seed"
    The combo scales what your crops sell for at harvest. Seed and fertiliser costs are never scaled, so a bigger combo widens your margin instead of just inflating both sides. Auto-harvest earns the combo too, but only reflects the multiplier from your last active session - harvests that land while you are offline pay flat.

!!! note "The multiplier is read from a live cache"
    Every activity records its quest progress **before** it pays out, so a stack you just earned is already applied to the very next ore, catch or delivery. You never have to re-run a command for it to take effect.

## Decay

Decay is **flat**. Every missed period costs the same, no matter how many you have missed in a row:

| Period missed | Stacks lost |
|---|---|
| A day with fewer than 2 dailies done | −1 daily stack |
| A week with fewer than 2 weeklies done | −1 weekly stack |

Missing ten days costs ten daily stacks out of 100 - never your whole bar. Your progress only unwinds as fast as you built it. Your **streak** counter does reset to 0 on a miss, but your stacks do not.

Nothing is charged at midnight. Decay is worked out the next time you touch the bot, comparing where you left off against today - so a month away is settled in one go on your return, at one stack per missed day.

### Streak freezes

A **streak freeze** is spent automatically the moment you miss a period, cancelling that period's decay completely and leaving your miss counter untouched. An ordinary skipped day costs you nothing at all.

There is exactly one way to get them: **keep a day** - do 2 daily objectives - and you earn a freeze.

- **2 per week** maximum (Patreon: **3**), reset every Monday 00:00 UTC alongside the weekly quests
- **Hold 2** maximum (Patreon: **3**)
- **Not for sale.** Freezes are not in the quest shop and never drop from the login calendar
- Keeping a **week** earns no freeze - a weekly stack is already the reward

The weekly allowance and the hold cap are the same number on purpose. Spend one and you can re-earn it that same week only if you have allowance left - so the cushion always reflects the days you actually kept, and a good fortnight can never be banked into a long absence.

The **Combo** tab shows both numbers as `Streak freezes: 2/2 (0 more can be earned this week)`.

## Quest tokens

### What each task pays

| Source | Tokens |
|---|---|
| Each **daily** quest completed | **10** |
| Daily set bonus (all 4 done) | **+25** |
| Each **weekly** quest completed | **60** |
| Weekly set bonus (all 4 done) | **+250** |
| Every **3 consecutive** kept days | **+50** |
| Login calendar, per day | **20 – 250** (avg 59) |

A full daily set is therefore **65 tokens** (4 × 10 + 25) and a full weekly set is **490 tokens** (4 × 60 + 250).

Tokens cannot be traded, gifted, or converted to money, and never expire. Every movement is written to a ledger, so a balance can always be reconciled.

### Maximum earnings

Playing perfectly - all four dailies every day, all four weeklies, an unbroken streak, and opening the bot every day for the calendar:

| | Per day | Per week | Per month (30d) | Per year |
|---|---|---|---|---|
| Daily quests + set bonus | 65 | 455 | 1,950 | 23,725 |
| Streak milestones | ~17 | ~117 | 500 | ~6,083 |
| Weekly quests + set bonus | 70 | 490 | 2,100 | ~25,557 |
| **Quests total** | **~152** | **~1,062** | **~4,550** | **~55,365** |
| Login calendar | ~59 | ~415 | ~1,779 | ~21,650 |
| **Everything** | **~211** | **~1,477** | **~6,329** | **~77,015** |

Weekly and milestone tokens are shown amortised per day, since they land in lumps rather than evenly.

!!! tip "The single best day possible: 855 tokens"
    Finish all four dailies (65), land a streak milestone (50), clear the whole weekly set on that same day (490) and hit **day 28** of the login calendar (250). That is the hard ceiling for one calendar day - and it can only happen once every 28 days.

!!! tip "The best possible week: ~1,670 tokens"
    455 from dailies + 490 from the weekly set + 100 from two streak milestones + 625 from calendar days 22–28, the richest stretch of the cycle. An ordinary perfect week is closer to **1,477**.

### What different play patterns actually earn

| How you play | Quest tokens/week | Calendar/week | **Total/week** | **Per month** |
|---|---|---|---|---|
| Everything, every day (perfect) | ~1,062 | ~415 | **~1,477** | **~6,329** |
| All 4 dailies, 5 days a week + full weekly | ~865 | ~297 | **~1,162** | **~4,980** |
| Just 2 dailies a day (streak-keeping only), 2 weeklies | ~377 | ~415 | **~792** | **~3,394** |
| Never touch a quest, just open the bot daily | 0 | ~415 | **~415** | **~1,779** |

The gap between the bottom row and the top is roughly **3.6×**, and almost all of it is the weekly set - 490 tokens for four objectives is the single densest reward in the feature.

### What that buys

At the perfect-play rate of ~211 tokens a day:

| Goal | Cost | Time |
|---|---|---|
| A scratch card | 80 | ~9 hours |
| A [daily quest refresh](quests.md#refreshing-your-daily-set) | 75 | ~9 hours |
| A [Heist Pass](shop.md#boosts) | 450 | ~2 days |
| [Irrigation](shop.md#permanent), the cheapest permanent | 2,000 | ~10 days |
| **All five permanent upgrades** | 14,500 | **~69 days** |
| Every permanent + both Vote Streak Restores | 24,500 | **~116 days** |

Tokens also buy a **[daily quest refresh](quests.md#refreshing-your-daily-set)** - 75 tokens to swap your unfinished daily quests for different ones, twice a week (three times on Patreon).

[Patreon](../store/patreon.md) members also get **[quest skips](quests.md#skipping-a-quest)** - 1 to 5 a week by rank, one a day, each completing an unfinished daily outright. Skips cost no tokens.

You cannot buy every repeatable, either. Maxing the daily caps - 5 cooldown resets, 10 scratch cards and a Heist Pass - costs **1,550 tokens a day** against an income of ~211. The consumables are meant to be picked, not swept.

## Login calendar

A **28-day rotating calendar** that pays out on your first command of each UTC day. There is nothing to claim and no command to run - just use the bot. The claim is silent; the **Daily** tab of `/quests` confirms it with `Day N of 28 claimed`.

Missing a day does **not** reset it. The calendar simply does not advance, so day 12 is still day 12 whenever you next show up. It is the low-pressure floor underneath the quests.

| Day | Tokens | Extra | | Day | Tokens | Extra |
|---|---|---|---|---|---|---|
| 1 | 20 | - | | 15 | 40 | - |
| 2 | 25 | - | | 16 | 45 | - |
| 3 | 30 | - | | 17 | 50 | - |
| 4 | 35 | Scratch Card | | 18 | 55 | Scratch Card |
| 5 | 40 | - | | 19 | 60 | - |
| 6 | 45 | - | | 20 | 65 | - |
| **7** | **60** | - | | **21** | **120** | **Heist Pass** |
| 8 | 30 | - | | 22 | 50 | - |
| 9 | 35 | - | | 23 | 55 | - |
| 10 | 40 | - | | 24 | 60 | - |
| 11 | 45 | Scratch Card | | 25 | 65 | Scratch Card |
| 12 | 50 | - | | 26 | 70 | - |
| 13 | 55 | - | | 27 | 75 | - |
| **14** | **90** | **Scratch Card** | | **28** | **250** | **Scratch Card** |

A full cycle pays **1,660 tokens**, **six scratch cards** and **one Heist Pass**. Week totals are 255, 345, 435 and 625 - the calendar gets steadily richer, then loops back to day 1.

!!! note "Calendar items are granted, not sold"
    A scratch card from the calendar lands in your stack ready for `/scratch open`, and a Heist Pass takes effect immediately. Neither counts against the shop's daily purchase limits.

## Commands

- [`/quests`](quests.md) - Your quests, combo multiplier and the shop
- [`/refresh-quests`](quests.md#refreshing-your-daily-set) - Swap your unfinished daily quests for different ones
- [Quest reminders](reminders.md) - Reminder DMs, toggled from the hub
- [Quest shop](shop.md) - Everything you can buy with tokens

## Related systems

- **[Voting](../economy/voting.md)** - the daily anchor quest, and a lost vote streak can be restored once from the quest shop
- **[Heists](../../games/heists/index.md)** - extra daily heist attempts are buyable with tokens
- **[Pets](../pets/index.md)** - Pet Revival and the Auto-Feeder are quest shop upgrades
- **[Farming](../farming/index.md)** - Irrigation is a quest shop upgrade
