# /pay

Send wallet money to another player.

## Description

Pays another user from your wallet (not your bank). You'll get a confirmation prompt before the transfer goes through, and the amount, recipient, and any reason are written to your transaction history.

Both you and the recipient must have transactions enabled (see [`/transactions_toggle`](transactions-toggle.md)) and neither of you can be under payment restrictions from the robbery system.

## Required Fields

- **user** - The Discord member to send money to. Cannot be yourself or a bot.
- **amount** - How much to send. Accepts plain numbers, shorthand (`k`, `m`, `b`, `t`), or keywords (`max`, `half`).

## Optional Fields

- **reason** - A short note attached to the payment. Shown on the confirmation prompt and stored with the transaction.

## Usage

`/pay [user] [amount] [reason]`

## Examples

`/pay @username 5000`
`/pay @username 1m gift`
`/pay @username max paying back what I owe`

## Notes

- Cooldown: **3 seconds**.
- **Minimum payment:** $1. **Maximum:** 10 quadrillion ($10,000,000,000,000,000).
- A confirmation button appears before the payment goes through. The transaction is re-checked at confirmation time, so balances and payment-block status are validated twice.
- You cannot pay yourself or a bot.
- If you've recently been robbed (or robbed someone), you may be temporarily unable to send or receive payments. Use [`/cooldowns`](cooldowns.md) to check.
- The recipient must have payments enabled - they can disable receiving with [`/transactions_toggle`](transactions-toggle.md).
