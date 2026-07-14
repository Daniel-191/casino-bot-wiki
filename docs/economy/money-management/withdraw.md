# /withdraw

Move money from your bank back to your wallet so you can spend, gamble, or send it.

## Description

Withdraws the requested amount from your bank into your wallet. You'll need wallet balance to gamble in any casino game, send via [`/pay`](pay.md), or buy from most shops. Note that money in your wallet can be robbed, so only withdraw what you need.

## Required Fields

- **amount** - How much to withdraw. Accepts plain numbers (`5000`), shorthand (`5k`, `2.5m`, `1b`), or keywords:
    - `max` - Withdraw your entire bank balance.
    - `half` - Withdraw half of it.

## Usage

`/withdraw [amount]`

## Examples

`/withdraw 10000`
`/withdraw 1.5m`
`/withdraw max`

## Notes

- Cooldown: **3 seconds**.
- **Minimum withdrawal:** $100.
- Capped at your current bank balance.
- Every withdrawal is recorded in [`/transactions`](transactions.md).
