# /rob

Steal money from other players, manage anonymous mode, view your stats, and run the bounty system.

## Description

`/rob` is a command group with eight subcommands covering all of the robbery system. The headline action is [`/rob user`](#rob-user) - everything else supports it.

See the [Robbery overview](index.md) for the full mechanics; this page covers each subcommand's exact arguments and behavior.

---

## /rob user

Attempt to rob another player.

**Usage:** `/rob user [target]`

**Required Fields:**

- **target** - The Discord member to rob. Must be in the same server as you.

**Mechanics:**

- **Stake:** 50% of target's wallet balance. You must have that much in your own wallet to attempt.
- **Success chance:** 43.33%.
- **Minimum balance to attempt:** $1,000 in your wallet.
- **On success:** you receive (stake − 2% tax − 15% anonymous tax if enabled). Target loses the full stake.
- **On failure:** you lose the stake (capped at your wallet) as a fine. Target keeps their money.
- **Both outcomes:** 30-minute payment block applied to both players (no `/pay` either direction during that window).

**Cooldown:** 30 minutes (Patreon T3+: ~19.5 min). `/vote` rewards halve this for one cycle.

---

## /rob anonymous

Toggle whether your identity is hidden from rob victims.

**Usage:** `/rob anonymous`

**Behavior:** Toggles between on and off.

- **When enabled:** victims see "Anonymous Robber 🎭" instead of your name. Costs an **extra 15% tax** on robbery profits (paid to lottery pool).
- **When disabled:** standard 2% tax only; victims see your name.

**Cooldown:** 5 seconds.

---

## /rob stats

View robbery statistics for yourself or another player.

**Usage:** `/rob stats [user]`

**Optional Fields:**

- **user** - Mention another player to view their stats. Defaults to you.

**Shows:** total attempts, successful robberies, failed robberies, success rate, money won, money lost (failed attempts), money lost (as victim), net profit/loss, average win, average loss, anonymous mode status.

**Cooldown:** 5 seconds.

---

## Bounty system

Subcommands under `/rob bounty` for placing and managing bounties on other players. Bounties are **per-server** - a bounty in Server A doesn't carry to Server B.

### /rob bounty set

Place a money bounty on another player.

**Usage:** `/rob bounty set [target] [amount] [expiry]`

**Required Fields:**

- **target** - Player to put the bounty on. Cannot be yourself or a bot.
- **amount** - Money amount. Accepts numbers, shorthand (`k`/`m`/`b`/`t`), or `min`/`max`/`half`. Minimum $1,000.
- **expiry** - How long the bounty lasts. Format: `1d`, `48h`, `30m`. Min 1 minute, **max 7 days**.

The amount is deducted from your wallet immediately. Whoever robs (or attempts to rob) the target claims the bounty automatically - even on failed rob attempts.

**Cooldown:** 10 seconds.

### /rob bounty list

Browse all active bounties in this server.

**Usage:** `/rob bounty list`

Paginated view with target name, amount, time remaining, and bounty setter.

**Cooldown:** 5 seconds.

### /rob bounty info

Check if a specific player has a bounty on them.

**Usage:** `/rob bounty info [user]`

**Optional Fields:**

- **user** - Player to check. Defaults to you.

**Cooldown:** 5 seconds.

### /rob bounty remove

Cancel a bounty you set and get refunded.

**Usage:** `/rob bounty remove [target]`

**Required Fields:**

- **target** - The player whose bounty (yours, on them) to cancel.

You can only remove bounties you set yourself.

**Cooldown:** 10 seconds.

### /rob bounty increase

Add more money to a bounty you've already placed.

**Usage:** `/rob bounty increase [target] [amount]`

**Required Fields:**

- **target** - The player whose bounty to top up.
- **amount** - Additional money. Accepts shorthand and shortcuts.

**Cooldown:** 10 seconds.

---

## General notes

- All robberies require **same-server** targets.
- **Bank balances are safe** - only wallet money can be stolen.
- The 30-minute payment block applies regardless of robbery outcome and blocks both directions of [`/pay`](../money-management/pay.md).
- `/vote` halves your `/rob user` cooldown for the next cycle.
- 2% of every rob (success or fail) is taxed into the lottery pool, plus 15% extra in anonymous mode.
