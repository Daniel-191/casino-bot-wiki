# Robbery

Steal directly from other players - but lose big if you're caught. The robbery system also includes **bounties** (put a price on someone's head) and **anonymous mode** (hide your identity at a tax cost).

## How robbing works

When you target another player with [`/rob user`](rob.md):

- **Stake = 50% of the target's wallet balance.** You need that much in your own wallet just to attempt the robbery.
- **Success chance: 43.33%.**
- **On success:** you take the stake (minus 2% lottery tax, minus 15% extra if you're in anonymous mode).
- **On failure:** you lose the stake amount as a fine, plus the lottery tax.
- **Either way:** both you and the target are **payment-blocked for 30 minutes** - neither of you can use [`/pay`](../money-management/pay.md) during that window.

Targets must be in the **same Discord server** as you, and you must have at least **$1,000** in your wallet to attempt any rob.

## Bounty system

You can put a money bounty on another player's head with [`/rob bounty set`](rob.md#bounty-system). Anyone who successfully robs (or even fails to rob) the target claims the bounty. Bounties are **per-server** and have an expiry timer (max 7 days). The setter can remove their own bounty for a refund or top it up later.

## Anonymous mode

Toggle with [`/rob anonymous`](rob.md#rob-anonymous). When enabled, victims see "Anonymous Robber 🎭" instead of your name in the rob notification. **Costs an extra 15% tax on profits** (paid to the lottery pool on top of the standard 2%).

## Commands

All robbery actions are subcommands of `/rob`:

| Subcommand | What it does |
|---|---|
| [`/rob user`](rob.md#rob-user) | Attempt to rob another player |
| [`/rob anonymous`](rob.md#rob-anonymous) | Toggle anonymous mode (15% tax) |
| [`/rob stats`](rob.md#rob-stats) | View robbery history |
| [`/rob bounty set`](rob.md#bounty-system) | Place a bounty on someone |
| [`/rob bounty list`](rob.md#bounty-system) | See all active bounties in this server |
| [`/rob bounty info`](rob.md#bounty-system) | Check if a specific user has a bounty |
| [`/rob bounty remove`](rob.md#bounty-system) | Cancel a bounty you set (refund) |
| [`/rob bounty increase`](rob.md#bounty-system) | Top up an existing bounty |

## Cooldowns and protection

- **`/rob user` cooldown:** 30 minutes (Patreon T3+: ~19.5 min). Voting halves this further (50% reduction).
- **30-minute payment block** on both attacker and victim after every rob attempt - see [`/pay`](../money-management/pay.md) for what's blocked.
- Money in your **bank** is safe from robbery. Only **wallet** balance can be stolen - keep it banked when you're not playing.
