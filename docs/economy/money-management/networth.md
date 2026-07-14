# /networth

Detailed wealth breakdown including liquid assets, properties, and farm assets.

## Description

Calculates your true total wealth by combining wallet, bank, the value of every property you own, and the value of your farm (planted crops plus harvested crop inventory). The result is broken down into liquid assets (wallet + bank), property assets, and farm assets, with the percentage each represents of your overall net worth and your global rank.

Farm assets count your currently planted crops at their sell price (regardless of whether they've finished growing yet) plus any harvested crops sitting in your inventory, so your net worth and rank don't temporarily dip just because your gold is tied up in crops waiting to be harvested.

Useful for seeing how much of your wealth is tied up in real estate, farming, vs. spendable money.

## Optional Fields

- **user** - Mention another server member to view their net worth instead of your own.

## Usage

`/networth [user]`

## Examples

`/networth`
`/networth @username`

## Notes

- Cooldown: **3 seconds**.
- Net worth = wallet + bank + total purchase value of owned properties + farm assets.
- Farm assets = (planted crops × their sell price) + (harvested crop inventory × sell price). Crops are valued at full sell price even while still growing, so planting doesn't cost you rank while you wait to harvest.
- Top 5 most valuable properties are listed individually; the rest are grouped under "Other Properties."
- Your rank is your position among all users globally (not just this server).
- Net worth is the metric used for the [`/leaderboard`](leaderboard.md).
