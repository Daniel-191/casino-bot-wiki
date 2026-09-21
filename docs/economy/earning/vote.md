# /vote

Vote for Paradise Bot on listing sites for money, bonuses, and a streak that boosts every other reward.

## Description

Opens the vote panel with buttons for each supported listing site. Each site has its own 12-hour cooldown, so you can vote on multiple sites per day. Voting:

- Pays a **money reward** that scales with your current streak
- Boosts your farm's growth speed for **1.5 hours**
- Cuts your `/rob` cooldown by **50%**
- Awards **1 scratch card**
- Voting on **both Top.gg + DBL within 24h** grants a **+2 daily heist limit** bonus
- Completes your daily **Vote for the bot 1 time** [quest](../../features/quests/quests.md), which is in every daily set

Maintaining the streak (vote at least once every 12h on either site) compounds into the streak multiplier that boosts every recurring reward - see the [Earning Money index](index.md#vote-streak-multiplier) for the full multiplier table.

## Supported sites

- **Top.gg** - main listing site
- **DBL (DiscordBotList)** - secondary listing
- **Rank.top** - bonus site (does **not** count toward the streak)

Each site is on its own 12-hour cooldown.

### Rank.top power votes

Rank.top's vote page offers a **Power Vote**, which is worth more to the bot's
ranking but puts your next Rank.top vote on a **23-hour** cooldown instead of 12 -
so it spends both of the day's Rank.top slots at once. It pays accordingly:

| | Scratch cards | Farm growth | Cooldown |
|---|---|---|---|
| Normal vote | 2 | 1 hour | 12h |
| Normal vote x2 (a full day) | 4 | 2 hours | - |
| **Power vote** | **5** | **2.5 hours** | 23h |

A power vote also counts as **two** votes toward vote quests, so it cannot leave
the daily "vote twice" quest unfinishable. Like any Rank.top vote, it pays no cash
and does not affect your vote streak.

## Usage

`/vote`

## Notes

- **Cooldown (slash command itself):** 3 seconds. Each listing site has a separate 12-hour cooldown.
- **Base reward:** $50M, scaled by streak bonus and Patreon multiplier.
- **Streak rule:** vote at least once every 12 hours on **either** Top.gg or DBL to maintain the streak.
- **Streak rewards calculation** uses tiered scaling - early days add ~20% per day, later days add up to +1.5× per day.
- **Milestone bonuses** are paid on top of streak rewards at days 7, 30, 90, 180, and 365 (2×, 10×, 30×, 60×, 150× of base, respectively).
- **Patreon vote multiplier** is separate from the DWM multiplier: T1 = 1.0×, T2 = 1.5×, T3 = 2×, T4 = 3×, T5 = 4×, T6 = 5×, T7 = 6.5×, T8 = 15×.
- See [`/vote-milestones`](vote-milestones.md) for streak-tier permanent unlocks (property protection, extra slots).
- **Quest progress** counts from any of the three sites. A Rank.top power vote counts as two. The daily quest needs one vote, so a second site adds nothing to it that day - but the weekly quest counts every vote, so voting on all three sites clears its 5 votes in under two days.
- You can toggle a vote-ready DM reminder from the same panel.
