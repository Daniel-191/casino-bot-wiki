# /deposit

Move money from your wallet into your bank, where it's safe from robbery and gambling losses.

## Description

Deposits the requested amount from your wallet into your bank balance. The amount is capped by both your wallet balance and your remaining bank capacity. Once banked, money is protected and starts earning daily interest at the next 11:00 UTC payout.

If your bank is full, upgrade your vault with [`/shop`](../../features/store/shop.md) - bigger vaults hold more money and earn more interest.

## Required Fields

- **amount** - How much to deposit. Accepts plain numbers (`5000`), shorthand (`5k`, `2.5m`, `1b`), or keywords:
    - `max` - Deposit as much as your wallet and bank capacity allow.
    - `half` - Deposit half of your wallet (subject to bank capacity).

## Usage

`/deposit [amount]`

## Examples

`/deposit 10000`
`/deposit 5m`
`/deposit max`

## Notes

- Cooldown: **3 seconds**.
- **Minimum deposit:** $100.
- If the requested amount exceeds your bank's remaining space, you'll be told exactly how much you can fit and prompted to upgrade your vault.
- Every deposit is recorded in [`/transactions`](transactions.md).
