# /transactions_toggle

Block or allow other players from sending you money.

## Description

Disabling transactions means no one can send you money via [`/pay`](pay.md). You'll also be unable to send payments yourself while disabled. Useful if you want to opt out of trading entirely or block unwanted gifts.

The setting persists until you change it.

## Required Fields

- **setting** - `enable` or `disable`.

## Usage

`/transactions_toggle [setting]`

## Examples

`/transactions_toggle enable`
`/transactions_toggle disable`

## Notes

- Cooldown: **3 seconds**.
- Setting is saved per-user and applies to **all servers**, not just the one you ran it in.
- While disabled, both incoming and outgoing payments are blocked.
- This setting does **not** affect game wins/losses, daily/hourly rewards, or robberies - only direct player-to-player transfers.
