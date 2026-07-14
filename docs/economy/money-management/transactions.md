# /transactions

View your recent transactions - payments sent, payments received, deposits, withdrawals, and other money events.

## Description

Shows your transaction history with sortable views and pagination. Free users see a recent slice; **Patreon supporters get full history plus extra sort modes** that let you see who's paid you the most or who you've paid the most.

## Optional Fields

- **sort** - How to order results. Options:
    - `Newest First` (default)
    - `Oldest First`
    - `Highest Amount First`
    - `Lowest Amount First`
    - `Who Sent Me Most Money` *(Patron only)*
    - `Who I Sent Most Money To` *(Patron only)*
- **per_page** - Transactions to show per page. Range: **5–15** (default 10).

## Usage

`/transactions [sort] [per_page]`

## Examples

`/transactions`
`/transactions sort:"Highest Amount First"`
`/transactions sort:"Newest First" per_page:15`

## Notes

- Cooldown: **5 seconds**.
- The two "top sender / top recipient" sort modes are **Patreon-only** and aggregate totals across your entire history.
- All money events are recorded: deposits, withdrawals, `/pay` transfers, game wins/losses, etc.
- Use [`/transactions_toggle`](transactions-toggle.md) to block incoming payments entirely.
