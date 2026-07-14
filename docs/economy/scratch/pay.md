# /scratch pay

Gift unopened scratch cards from your account to another user.

## Description

Transfer cards from your inventory to a friend. After running the command you'll see a confirmation prompt - if you confirm, the cards leave your account and arrive on theirs immediately. The recipient gets a notification and can open the cards with `/scratch open`.

## Required Fields

- **user** - Discord member to send cards to.
- **amount** - Number of cards to gift (must be ≥ 1).

## Optional Fields

- **reason** - Free-text note shown on the confirmation and saved in transfer history.

## Usage

`/scratch pay [user] [amount] [reason]`

## Examples

`/scratch pay @username 5`
`/scratch pay @username 10 reason:"happy birthday"`
`/scratch pay @username 1`

## Restrictions

- **Can't gift to yourself.**
- **Can't gift to bots.**
- **Can't gift more cards than you own** - the bot rejects the command if you don't have `amount`.

## Notes

- **Cooldown:** 3 seconds (with an additional internal 5-minute gift cooldown to prevent abuse).
- Confirmation prompt times out after a short window - confirm or it cancels.
- This action **cannot be undone** once confirmed.
- See [`/scratch pay-history`](pay-history.md) to view what you've sent and received.
- See [`/scratch open`](open.md) for how the recipient redeems them.
