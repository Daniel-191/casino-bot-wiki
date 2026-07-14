# Money Management

Everything you need to check your balance, move money between your wallet and bank, send money to other players, and track where your money has gone.

## Wallet vs Bank

Paradise Bot splits your money into two places:

- **Wallet** - Money you can spend, gamble, or send. Wallet money is at risk: it can be stolen via `/rob` and lost in casino games.
- **Bank** - Safe storage. Bank money cannot be robbed or gambled directly. Money in your bank earns daily interest at 11:00 UTC. Bank capacity is limited; upgrade with `/shop`.

## Commands at a glance

| Command | What it does |
|---|---|
| [`/balance`](balance.md) | Check your wallet and bank totals |
| [`/deposit`](deposit.md) | Move money wallet → bank |
| [`/withdraw`](withdraw.md) | Move money bank → wallet |
| [`/pay`](pay.md) | Send money to another player |
| [`/networth`](networth.md) | Full wealth breakdown including properties and farm assets |
| [`/leaderboard`](leaderboard.md) | Top 100 richest players (global or server) |
| [`/transactions`](transactions.md) | View your transaction history |
| [`/transactions_toggle`](transactions-toggle.md) | Block or allow incoming payments |
| [`/cooldowns`](cooldowns.md) | See when income commands are ready again |
| [`/stats`](stats.md) | Profit/loss across every game you've played |

## Amount shortcuts

Most money commands accept shorthand for big numbers:

- `1k` → 1,000
- `5m` → 5,000,000
- `2.5b` → 2,500,000,000
- `1t` → 1,000,000,000,000
- `max` → all of the relevant balance
- `half` → half of it
