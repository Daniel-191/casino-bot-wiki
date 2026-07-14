# /scratch pay-history

View every scratch card you've sent or received via `/scratch pay`.

## Description

Paginated log of all gift transfers - both inbound (cards you got from friends) and outbound (cards you sent away). Each entry shows the other user, the amount, the reason (if one was set), and the timestamp.

## Usage

`/scratch pay-history`

## Examples

`/scratch pay-history`

## What it shows

The history embed paginates **10 transfers per page** with navigation buttons. Each transfer line includes:

- Direction - sent or received.
- Other user (mention).
- Amount of cards.
- Reason, if the sender provided one.
- When the transfer happened.

Top-of-embed totals:

- **Total Sent** - lifetime cards you've gifted out.
- **Total Received** - lifetime cards you've received.

## Notes

- **Cooldown:** 5 seconds.
- 10 entries per page.
- Up to **100 transfers** shown total.
- For session-level scratch history (what you opened), see [`/scratch history`](history.md).
- For sending cards, see [`/scratch pay`](pay.md).
