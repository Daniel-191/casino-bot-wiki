# /scratch open

Open your scratch cards and reveal the rewards. Each card draws one weighted reward from the prize pool.

## Description

If you have any unopened cards, this command pulls up the scratch interface - pick how many to open at once and the bot animates the scratch and reveals each reward. Money rewards apply instantly; farm boosts can be used now or stored in your inventory, and Patreon gifts are banked into `/stored-patreon`.

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

Farm boosts are spent **optimally**: the bot works out how long your slowest crop still needs and uses only the fewest boosts that cover it, preferring the largest boost that doesn't overshoot. Any boost that isn't needed is stored in your inventory instead of being wasted.

Patreon gifts are banked as days in `/stored-patreon` rather than starting immediately - so a win does not burn while you already hold a rank. Redeem them whenever you want the time to start; no support ticket is needed.

## Notes

- **Cooldown:** 3 seconds.
- **No cards** = the command shows you how to get some (`/vote`).
- Money rewards apply instantly to your wallet.
- Farm boosts can only be applied if you have crops planted; otherwise they're stored. Boosts beyond what your crops need are stored too.
- See [`/scratch history`](history.md) for past sessions and [`/scratch stats`](stats.md) for totals.
