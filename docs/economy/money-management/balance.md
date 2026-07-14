# /balance

Check the wallet and bank balance of yourself or another player.

## Description

Shows your current wallet and bank totals side-by-side, your bank capacity, and any patron tier badge you have. If you check yourself, you'll also see vote prompts when a vote is available and reminders for upcoming voting milestones.

Bank capacity comes from your `/shop` upgrades plus a Patreon bonus if you support the bot.

## Optional Fields

- **user** - Mention another server member to view their balance instead of your own.

## Usage

`/balance [user]`

## Examples

`/balance`
`/balance @username`

## Notes

- Cooldown: **3 seconds**.
- Daily interest is paid into your bank at **11:00 UTC**.
- Viewing someone else's balance does not trigger interest updates for them - only for yourself.
- Bank money cannot be robbed or gambled directly. Move money with [`/deposit`](deposit.md) and [`/withdraw`](withdraw.md).
