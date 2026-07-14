# Is the bot rigged?

**No.** Every outcome is determined by random number generation. The bot has no memory of past results and doesn't factor in your balance when deciding outcomes.

## How the RNG works

Not all games use the same method — and that's intentional. Python's built-in `random` module is fast but not cryptographically secure; it's based on a predictable algorithm that can technically exhibit patterns over billions of draws. For everyday game logic that's fine, but for high-stakes draws like the lottery, we go further.

The lottery winner selection uses multiple stacked layers of entropy:

- **`secrets` module** — pulls from OS-level randomness (e.g. `/dev/urandom` on Linux), which is cryptographically secure and genuinely unpredictable
- **SHA-256 hash mixing** — blends ticket data, timestamps, and random bytes into a hash that drives additional shuffling
- **Microsecond timing entropy** — injects real-time clock precision as an extra unpredictable variable
- **Multiple independent shuffle passes** — the pool is shuffled several times using different sources before winners are selected

The result is that for anything involving large prize draws, the randomness is as close to true randomness as software can get.

## House edge

Some games do have a house edge, and that's completely normal. It's the same reason real casinos can offer big payouts and still keep running. It's not there to cheat you — it's just what makes the economy sustainable and the games fair over time. You can absolutely win, and people do.

## See also

- [`/stats`](../economy/money-management/stats.md) - Track your win/loss record per game
- [`/transactions`](../economy/money-management/transactions.md) - Full history of every bet
