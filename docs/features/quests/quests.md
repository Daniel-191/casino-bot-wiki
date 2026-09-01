# /quests

Your daily quests, weekly quests, combo multiplier and the quest shop - all in one panel.

## Description

Opens a four-tab hub. Nothing here needs claiming: quest progress is recorded automatically as you play, and stacks are granted the instant a set completes.

| Tab | Shows |
|---|---|
| **Daily** | Your four daily quests, progress bars, time to reset in the title, today's login calendar day |
| **Weekly** | Your four weekly quests, with time to reset in the title |
| **Combo** | Current multiplier, stack breakdown, streaks, freezes held, decay warning |
| **Shop** | Everything buyable with quest tokens |

Every tab carries a footer with your **token balance** and your **current multiplier**.

A **Reminders** button sits under the tabs on every tab. It is **green** when daily quest reminder DMs are on and **red** when they are off - click it to toggle. See [reminders](reminders.md).

A **Refresh Quests** button sits next to it on the **Daily** tab only. See [refreshing your daily set](#refreshing-your-daily-set).

A **Skip a Quest** button sits alongside it on the **Daily** tab, for [Patreon](../store/patreon.md) members only. See [skipping a quest](#skipping-a-quest).

## Usage

`/quests`

`/refresh-quests` swaps your unfinished daily quests for different ones - the same thing the Daily tab's button does, without opening the hub.

`/leaderboards quest-tokens` ranks the players holding the most quest tokens, globally or inside your server.

## How a set is drawn

Both sets are drawn from a fixed seed built from the date, so:

- The set is **global**. Every player in every server gets the **same four daily quests** and the **same four weekly quests**, so you can compare and plan them with other players.
- The draw is **deterministic**. The same date always produces the same set.

Slot 1 is always the anchor quest. The other three slots are filled with **one quest from each category** - Adventure, Economy & risk, Engagement - so nobody can finish a day by only fishing. No quest can appear twice in one set.

There are **396** possible daily sets (11 × 6 × 6) and **20** possible weekly sets (5 × 2 × 2).

!!! tip "Your streak is never blocked by content you do not own"
    The anchor and the Engagement slot are always things any player can do - vote, plus one of the casino/daily/wordle/lottery objectives. That is already **2 of 4**, which is exactly what keeping your streak requires. A day that rolls a pet quest and a fries quest can still be kept by a player with neither.

## Daily quests

**Four per day**, redrawn at **00:00 UTC**. Each one pays **10 tokens**. Finishing **any two** banks a daily stack, keeps your streak and earns a [streak freeze](index.md#streak-freezes); clearing all four adds a **+25 token** set bonus, for **65 tokens** a day.

### Always slot 1

| Quest | Target | Notes |
|---|---|---|
| **Vote for the bot 1 time** | 1 | Any of the three vote sites |

Any of [top.gg](https://top.gg), Discord Bot List or rank.top counts, and it ticks over the moment the vote registers - the same instant your vote rewards land. Voting on more than one site in a day still only completes it once.

Voting is the one activity that pays the bot back rather than the player, so it is the one daily that never rotates out.

### Adventure (1 of these 11)

| Quest | Target | How it ticks |
|---|---|---|
| Mine 60 ore | 60 | Every ore counts, so a single good dig can finish it outright |
| Complete 2 dig sessions | 2 | Counted per finished `/mine` session, not per ore |
| Mine 5 rare or legendary ore | 5 | Only `rare` and `legendary` rarities; counts stacks, so a double drop counts twice |
| Catch 75 fish | 75 | One per catch, any location |
| Catch 5 rare or better fish | 5 | Rare, Epic, Legendary or Mythical |
| Catch fish in 2 different locations | 2 | Counts **distinct** locations - repeat catches in the same spot do not advance it |
| Complete 3 deliveries | 3 | Any completed fries delivery |
| Complete 2 deliveries with no penalty | 2 | No wrong areas, no wrong houses, no penalty charged |
| Put your pet to work 2 times | 2 | One per completed work session |
| Feed, play with or clean your pet 5 times | 5 | Any care action counts |
| Get every pet stat to 80 or above | 1 | Checked right after a care action - hunger, happiness, cleanliness **and** energy all at 80+ at once |

### Economy & risk (1 of these 6)

| Quest | Target | How it ticks |
|---|---|---|
| Attempt 2 robberies | 2 | Attempts, not successes. `/rob` has a 30 min cooldown, so up to 48 a day |
| Join or host 1 heist | 1 | Solo and group heists both count |
| Commit 2 crimes | 2 | Attempts, not successes |
| Claim your hourly 4 times | 4 | One per `/hourly` claim |
| Open 2 scratch cards | 2 | Counts cards opened, so opening a batch of 2 does it in one go |
| Make 1 bank deposit | 1 | Any successful deposit, any amount |

There is no property quest: property income is paid out by a scheduled 12:00 UTC task, not by anything you do.

### Engagement (1 of these 6)

| Quest | Target | How it ticks |
|---|---|---|
| Play 10 casino rounds | 10 | Any casino or wagering game, one per round played - solo games, crash and the player-vs-player games all count |
| Play 3 different casino games | 3 | Counts **distinct** games - ten rounds of blackjack is still 1/3 |
| Play 1 multiplayer game | 1 | Any player-vs-player game with money on the line: multiblackjack, multiplayer dice, dice duel, RPS, fight, tic-tac-toe, coinflip duel, wordle duel, battleship, Connect 4, buckshot, gun game and Russian Roulette. A Connect 4 game with a bet of 0 does not count |
| Claim your daily reward | 1 | `/daily` |
| Play the daily Wordle | 1 | One attempt is enough |
| Buy 1 lottery ticket | 1 | Counts tickets, so a multi-ticket purchase clears it at once |

!!! tip "Nothing is left to luck"
    Every objective counts **attempts**, not wins. "Attempt 2 robberies" completes whether you succeed or not, and "Play 10 casino rounds" does not care if you lost all ten. No quest can ever be blocked by a bad RNG streak.

## Weekly quests

**Four per week**, redrawn **Monday 00:00 UTC**, and global - the same four for everyone. Each one pays **60 tokens**. Finishing **any two** banks a weekly stack and keeps your weekly streak; clearing all four adds a **+250 token** set bonus, for **490 tokens** a week - the densest reward in the whole feature.

### Always slot 1

| Quest | Target | How it ticks |
|---|---|---|
| **Keep your daily streak 5 times this week** | 5 | Ticks each day you finish **2** of your dailies - you do **not** need all four |

This is the quest that chains the daily track into the weekly one.

!!! warning "The in-game label is stricter than the quest"
    It currently reads *"Complete 5 full daily quest sets"*, but the objective ticks as soon as you **keep** a day - 2 of your 4 dailies. You never have to clear all four to advance it.

### Adventure (1 of these 5)

| Quest | Target | How it ticks |
|---|---|---|
| Mine 350 ore this week | 350 | ~5 good digs |
| Catch 400 fish this week | 400 | Under an hour of active fishing |
| Complete 20 deliveries this week | 20 | ~1 hour of fries |
| Put your pet to work 15 times this week | 15 | Roughly 2 work sessions a day |
| Do an adventure activity on 4 separate days | 4 | Counts **distinct days**. Mining ore, catching a fish, a delivery or pet work all mark that day - one of any of them is enough |

### Economy & risk (1 of these 2)

| Quest | Target | How it ticks |
|---|---|---|
| Complete 20 robberies or heists | 20 | Rob attempts and heist joins feed the **same** counter |
| Reach an hourly streak of 6 | 6 | Records your **highest** streak reached, it does not accumulate - a streak of 6 completes it instantly, and a streak of 5 stays at 5/6 no matter how many times you claim. Your best single run in the week is what counts, so one long session clears it |

### Engagement (1 of these 2)

| Quest | Target | How it ticks |
|---|---|---|
| Vote 5 times this week | 5 | One per day at most, so 5 days of voting |
| Play 100 casino games | 100 | Any casino or wagering game, one per round played |

## Refreshing your daily set

Handed a day you do not want? A **refresh** swaps your unfinished daily quests for different ones, for **75 quest tokens** a go.

Either open `/quests` and press **Refresh Quests** on the Daily tab, or run `/refresh-quests` on its own. Both show you what is about to change and ask you to confirm before any tokens are spent.

| | |
|---|---|
| **Cost** | 75 quest tokens per refresh |
| **Allowance** | **2 per week**, or **3** for any [Patreon](../store/patreon.md) tier |
| **Resets** | Monday 00:00 UTC, the same boundary as the weekly quests |
| **Applies to** | Daily quests only - the weekly set can never be refreshed |

What a refresh does **not** touch:

- **Slot 1, the vote quest.** It is the anchor and never rotates, at any price.
- **Anything you have already completed.** Those stay exactly where they are, with their tokens already paid - a refresh can never re-sell you a quest you finished.

Everything else is redrawn. Each replacement comes from its own category, so the set keeps its one-Adventure, one-Economy, one-Engagement shape, and it can never hand you back a quest that was already in the set. Progress on a replaced quest is reset to zero.

!!! note "A refreshed set is no longer the global one"
    The daily set is normally identical for every player (see [how a set is drawn](#how-a-set-is-drawn)). The moment you refresh, yours is your own - so it is no longer the set your friends are comparing notes about. That is the trade.

!!! tip "Your streak is never the reason to refresh"
    The vote quest and the Engagement slot already cover the **2 of 4** that keeping your streak needs, so a refresh is never what stands between you and your combo stack. Buy one to make a **full clear** (and its +25 token set bonus) more appetising, not to save a day.

## Skipping a quest

Handed the one objective you will not do? A **quest skip** completes an unfinished daily for you outright - it pays its **10 tokens**, counts toward the **2 of 4** that keeps your streak, and counts toward the full-clear set bonus, exactly as if you had played it.

Skips are a **[Patreon](../store/patreon.md) perk** and cost no tokens. Open `/quests`, press **Skip a Quest** on the Daily tab, pick the quest from the menu and confirm.

| Rank | Skips per week |
|---|---|
| DONATOR | 1 |
| CHILL | 1 |
| EPIC | 2 |
| SUPER | 2 |
| MEGA | 3 |
| ULTIMATE | 3 |
| CRAZY | 4 |
| GODLY | 5 |

| | |
|---|---|
| **Cost** | Free - the allowance is the perk |
| **Allowance** | 1-5 per week by rank, above |
| **Daily cap** | **1 per day**, whatever your rank |
| **Resets** | Monday 00:00 UTC, the same boundary as the refresh and freeze allowances |
| **Applies to** | Daily quests only - the weekly set can never be skipped |

What a skip can **never** touch:

- **Slot 1, the vote quest.** Voting is the one objective that pays the bot back rather than you, so it is not skippable at any rank.
- **Anything you have already completed.** Its tokens are already paid; a skip cannot pay them twice.

!!! note "One a day is deliberate"
    Keeping your streak needs **2 of 4**, so a one-per-day cap means a skip can never hold a day on its own - you still have to vote or clear one real objective. It is there to remove the objective you dislike, not to play the day for you.

!!! tip "Your rank is read when you open the hub"
    The allowance is sized from your Patreon roles the moment you run `/quests`. Let a rank lapse and your remaining skips go with it at the next open; upgrade and the larger allowance is live immediately.

## Completion alerts

You never have to open `/quests` to find out you finished one. The moment a quest completes, the next thing you do with the bot comes back with a short private reply telling you:

- which quest you just finished
- your quest token balance
- how many of your daily (or weekly) objectives are done

Any command, button, menu or modal carries it. If a quest completes with nothing to reply to - a **vote** registering, or a background payout - the alert waits and rides along on your next action instead. Several quests finishing at once are collapsed into one alert.

The reply is **ephemeral**: only you can see it, and it never interrupts the command it arrives with.

!!! note "Alerts are best-effort"
    A completion waits up to **15 minutes** for something to attach itself to, and only the **5** most recent are kept. Progress and tokens are never affected - a missed alert only means you find out when you next open `/quests`.

## Notes

- **Cooldown:** 4 seconds.
- Resets are **00:00 UTC** daily and **Monday 00:00 UTC** weekly.
- Progress is buffered and written to disk every **30 seconds**, and immediately whenever a quest completes - so a bar can lag a few seconds behind a fast activity like fishing, but a completion never does.
- Only you can press the buttons on your own hub.
- A refused refresh - no allowance left, not enough tokens, nothing left to refresh - never spends a token.
- A refused skip - no allowance left, one already used today, nothing left to skip - never spends a skip.
- The panel times out after **3 minutes**; run the command again to reopen it.
- For the multiplier rules, decay and full token maths, see the [Quests index](index.md).
