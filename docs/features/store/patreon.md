# Patreon Shop

Real-money tier subscriptions to Paradise Bot via [Patreon](https://patreon.com/ParadiseBotx). 8 tiers, each unlocking permanent perks across the entire bot.

## Tiers

| Tier | Name | Patreon tier | Price / month |
|---|---|---|---|
| **Tier 1** | DONATOR | Donator | $1 |
| **Tier 2** | CHILL | Chill Donator | $2 |
| **Tier 3** | EPIC | Epic Donator | $3.50 |
| **Tier 4** | SUPER | Super Donator | $6 |
| **Tier 5** | MEGA | Mega Donator | $11 |
| **Tier 6** | ULTIMATE | Ultimate Donator | $17 |
| **Tier 7** | CRAZY | Crazy Donator | $25 |
| **Tier 8** | GODLY | GODLY DONATOR | $50 |

Each rank also carries its own coloured Discord role in the support server.

## Perks by system

### Daily, weekly and monthly

| Tier | `/daily` `/weekly` `/monthly` | Vote reward |
|---|---|---|
| Tier 1 | 2.5× | — |
| Tier 2 | 5× | 1.5× |
| Tier 3 | 10× | 2× |
| Tier 4 | 15× | 3× |
| Tier 5 | 20× | 4× |
| Tier 6 | 25× | 5× |
| Tier 7 | 30× | 6.5× |
| Tier 8 | **40×** | **15×** |

### Cooldowns

- **T1:** −10% · **T2:** −20% · **T3 and above:** −35%
- Does not apply to `/daily`, `/weekly`, `/monthly`, `/hourly`, farming or fishing —
  those have their own timers.

### Fishing

| Tier | Earnings | XP | Cooldown |
|---|---|---|---|
| Tier 1 | — | — | — |
| Tier 2 | 1.2× | 1.15× | −5% |
| Tier 3 | 1.5× | 1.4× | −15% |
| Tier 4 | 2× | 1.8× | −25% |
| Tier 5 | 2.5× | 2.2× | −35% |
| Tier 6 | 3.2× | 2.8× | −45% |
| Tier 7 | 4× | 3.5× | −55% |
| Tier 8 | **5.5×** | **4.8×** | **−65%** |

### Properties

Payout multiplier on daily property income. T1 and T2 get no bonus.

| Tier | Multiplier |
|---|---|
| Tier 3 | 2× |
| Tier 4 | 2.75× |
| Tier 5 | 3.5× |
| Tier 6 | 4.25× |
| Tier 7 | 5× |
| Tier 8 | **6×** |

### Bank

- **T3–T7:** +5Q bank space on top of whatever you have bought.
- **T8:** **+10Q**.

### Transactions

- Any rank unlocks the **full** `/transactions` history and the complete
  top-senders / top-recipients lists. Free users see the most recent 10.

### Farming

| Tier | Profit boost | Grow time | Speed |
|---|---|---|---|
| Tier 1 | +15% | −10% | 1.11× faster |
| Tier 2 | +25% | −15% | 1.18× faster |
| Tier 3 | +30% | −20% | 1.25× faster |
| Tier 4 | +50% | −25% | 1.33× faster |
| Tier 5 | +65% | −30% | 1.43× faster |
| Tier 6 | +80% | −35% | 1.54× faster |
| Tier 7 | +100% (2×) | −40% | 1.67× faster |
| Tier 8 | **+200% (3×)** | **−67%** | **3× faster** |

**Auto harvest + replant** (in farm settings) is **CRAZY and GODLY only**: when your
crops finish, they are sold and the same crop is replanted for you, minus a tax on
the profit — **30% for CRAZY, 5% for GODLY**.

### Heists

- **Tax rate** on winnings:
  - T1–T3: 15% (vs. 20% free)
  - T4–T5: 5%
  - T6–T8: **0%**
- **Daily heist limit:**
  - T1–T3: 6 (vs. 4 free)
  - T4–T5: 8
  - T6–T7: 10
  - T8: 15
- **Patron-only heist location** unlocked at every rank, with its own escape routes and
  **+0.15 on the reward multiplier**. Solo and group heists share one daily counter.

### Mining

- **Mine All button** unlocked — clears every remaining spot across **all** pages in one press.
- Ore mined this way is worth **+25% more**, and each one has a **15% chance to upgrade
  in quality** for another +50%. Both bonuses apply to Mine All only, not to ordinary clicks.

### Lottery

- **15 tickets per draw** (vs. 10 for free users).

### Scratch Cards

- **Weekly free claim:** 10 scratch cards every week (T1–T7) / **15** (T8).

### Quests

- **[Quest skips](../quests/quests.md#skipping-a-quest):** complete one unfinished daily quest outright, no tokens spent. It pays the quest's 10 tokens and counts toward your streak and set bonus. Capped at **1 per day** whatever your rank, and never usable on the vote quest.

| Tier | Skips per week |
|---|---|
| Tier 1 | 1 |
| Tier 2 | 1 |
| Tier 3 | 2 |
| Tier 4 | 2 |
| Tier 5 | 3 |
| Tier 6 | 3 |
| Tier 7 | 4 |
| Tier 8 | **5** |

- **Daily quest refresh:** 3 per week (vs. 2 free) - see [refreshing your daily set](../quests/quests.md#refreshing-your-daily-set).
- **[Streak freezes](../quests/index.md#streak-freezes):** hold 3 and earn 3 per week (vs. 2 and 2 free).

### Other

- **Discord role flair** + custom colored name in the support server.
- **Exclusive title** shown on your profile: `[DONATOR]`, `[CHILL]`, `[EPIC]`, `[SUPER]`,
  `[MEGA]`, `[ULTIMATE]`, `[CRAZY]`, `[GODLY]`.
- Eligible for **Patreon gifts** via [`/scratch open`](../../economy/scratch/open.md) drops.
- Recipient of **stored Patreon gifts** for events and admin gifting.

## How to subscribe

Run [`/store`](store.md) for the link, or visit [patreon.com/ParadiseBotx](https://patreon.com/ParadiseBotx) directly.

## Checking your status

Use [`/patreon`](#) to see your current tier, where it came from, and when it expires.

## How your rank is detected

The bot reads your pledge from the Patreon API directly, several times an hour. You do **not** need to be in the Paradise server for your perks to work - a rank follows your account everywhere the bot is.

For this to find you, connect your Discord account to Patreon (Patreon → Settings → Apps → Discord). If Patreon does not report a Discord account for you, the bot falls back to the tier role you were given in the Paradise server, so nothing breaks either way. If your perks are missing after subscribing, ask staff to link your account manually.

If a payment fails, your rank stays active for a **3 day** grace period rather than being cut off the moment the charge declines.

## Stored Patreon

`/stored-patreon` is your bank of rank days waiting to be used - from an admin gift, or from a [scratch card](../../economy/scratch/open.md) win.

- Pass the optional `user` option to view someone else's stored gifts.
- On your own list, pick a rank from the dropdown and enter how many days to redeem (minimum 1, up to the amount stored for that rank). Redeeming 10 of 30 stored days leaves 20 days stored.
- Redeeming starts the rank immediately and stacks onto any time you already have for it.
- Only the person who ran the command can redeem their own gifts.

!!! tip "Scratch card wins no longer need a support ticket"
    A rank won from a scratch card is banked straight into `/stored-patreon`. Redeem it yourself whenever you want it to start - there is nothing to claim in a ticket, and the days do not tick down while they sit in the bank.

## Notes

- Your rank works anywhere the bot does, whether or not you are in the Paradise server.
- Gifted Patreon (won via scratch cards or admin gift) is **time-limited** (typically 7 days for scratch wins).
- Stored days do not expire while banked - only once you redeem them.
- See [`/scratch open`](../../economy/scratch/index.md) for the rare-but-legitimate way to win free Patreon time.
