# /heist

Host a multiplayer heist in the current channel. Set the entry fee, recruit a crew, pick a location, and split the payout.

## Description

Starts a heist lobby in the channel where you ran the command. Other players can join by paying the same entry fee. Once you have enough players, you (the host) pick a location from a dropdown - different locations require different crew sizes and have different success rates and reward multipliers.

When the heist runs, the bot rolls success against the location's base rate. On a win, the pot is multiplied by the location multiplier and split among participants (minus tax). On a loss, everyone loses their entry fee.

Only **one heist per channel** can be active at a time. You can't host or join a heist if you're already in one (multiplayer or solo).

## Required Fields

- **entry_fee** - The amount each player must pay to join. Accepts numbers, shorthand (`k`, `m`), or shortcuts (`min`, `max`, `half`).

## Usage

`/heist [entry_fee]`

## Examples

`/heist 100k`
`/heist 5m`
`/heist max`

## Locations

| Location | Players | Base success | Reward multi | Difficulty |
|---|---|---|---|---|
| **Local Bank** | 2–4 | 77% | 1.8× | Easy |
| **Luxury Mansion** | 2–3 | 75% | 1.9× | Easy |
| **Lucky Casino** | 3–5 | 68% | 2.3× | Medium |
| **Royal Train** | 3–4 | 62% | 2.3× | Hard |
| **Federal Vault** | 4–6 | 57% | 2.1× | Hard |
| **Space Taco Research Facility** | 3–12 | 75% | 3.4× | Medium |
| **Capital Reserve** | 10–50 | 68% | 3.5× | Very Hard |
| **Paradise Vault** | 2–15 | 80% | 3.2× | Patreon Exclusive |

## Notes

- **Cooldown:** 10 minutes after the heist resolves (win or lose). Shared with `/solo-heist`.
- **Daily limit:** counts toward your shared heist limit (4 for non-Patreon, up to 17 with Patreon + voting). See the [Heists overview](index.md#daily-limits).
- **Tax on winnings:** 20% non-Patreon, 0% for Ultimate (T6) and above. See the [overview](index.md#tax-on-winnings).
- **Entry fee** is deducted when you host. If the heist fails to start (errors, no joiners), you're refunded.
- The location dropdown shows player count requirements and difficulty for each option. Patreon-exclusive locations are locked for free users.
- Once joined, players can't leave - entry fee is committed.
- Use [`/heist-stats`](heist-stats.md) to track your win rate and daily progress.
