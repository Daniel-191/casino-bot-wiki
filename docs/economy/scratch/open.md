# /scratch open

Open your scratch cards and reveal the rewards. Each card draws one weighted reward from the prize pool.

## Description

If you have any unopened cards, this command pulls up the scratch interface - pick how many to open at once and the bot animates the scratch and reveals each reward. Money rewards apply instantly; farm boosts and Patreon gifts can be used now or stored in your inventory.

You earn cards by **voting** (`/vote` - 1 card per vote) or, if you're a donator, by claiming `/scratch weekly-scratch`.

## Usage

`/scratch open`

## Examples

`/scratch open`

## Reward pool

Money prizes are calculated from your **base vote reward**, so a higher vote streak = bigger payouts.

- **Money** - 0.5× to 8× the vote reward (50%–800%)
- **Jackpots** - 10× / 15× / **25× mega jackpot** (legendary)
- **Farm Boosts** - 60–360 minutes off grow time
- **Lottery Tickets** - auto-entered into the current lottery draw
- **Patreon Gifts** - 7-day memberships (DONATOR through GODLY)

See the [Scratch Tickets index](index.md#rarity-tiers) for the full rarity breakdown.

## Choosing what to do with non-money rewards

When you draw a farm boost or Patreon gift, you'll get a prompt:

- **Use Now** - apply immediately (boosts your currently growing crops, etc.).
- **Store** - save it to your inventory and claim later via [`/scratch inventory`](inventory.md).

Patreon gifts always go to inventory and must be claimed manually - they aren't applied automatically because they replace your active membership tier for 7 days.

## Notes

- **Cooldown:** 3 seconds.
- **No cards** = the command shows you how to get some (`/vote`).
- Money rewards apply instantly to your wallet.
- Farm boosts can only be applied if you have crops planted; otherwise they're stored.
- See [`/scratch history`](history.md) for past sessions and [`/scratch stats`](stats.md) for totals.
