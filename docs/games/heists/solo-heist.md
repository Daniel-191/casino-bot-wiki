# /solo-heist

Run a heist on your own - higher base success rate than multiplayer, smaller payout multiplier, no need to wait for a crew.

## Description

A three-phase solo heist (Infiltration → Vault Access → Escape) at a randomly-chosen location. Each phase rolls independently with success chance starting at **68%** and dropping by **6%** per phase as you go deeper. You can fail **one phase** and still succeed; fail two and the heist is busted. Overall that works out to roughly a **66% chance** of completing the job.

On success: payout = `entry_fee × (1.20 to 1.40 random multiplier)`, minus tax.
On failure: you lose your entire entry fee.

Solo heists count toward the same daily limit as multiplayer heists, but resolve faster (no recruiting, no joinable lobby) so they're the better option when you want quick action.

## Required Fields

- **entry_fee** - Amount to risk. Accepts numbers, shorthand (`k`, `m`, `b`, `t`), or shortcuts (`min`, `max`, `half`).

## Usage

`/solo-heist [entry_fee]`

## Examples

`/solo-heist 100k`
`/solo-heist 5m`
`/solo-heist max`

## Locations

A location is chosen randomly per heist (cosmetic - doesn't change odds or payout):

- Downtown Casino
- Diamond Vault
- Art Gallery
- Luxury Penthouse
- High-Security Bank

## Phase mechanics

| Phase | Base success | Adjusted |
|---|---|---|
| Infiltration | 68% | 68% |
| Vault Access | 68% | 62% |
| Escape | 68% | 56% |

You can fail **one** phase and still complete the heist. Two failures and the job collapses.

## Notes

- **Min entry:** $10,000.
- **Max entry:** $25 trillion.
- **Cooldown:** 15 minutes on win, 10 minutes on loss. Shared with `/heist` (multiplayer).
- **Daily limit:** counts toward the shared heist limit (4 for non-Patreon, up to 17 max). See [overview](index.md#daily-limits).
- **Tax:** same as multiplayer heist - 20% non-Patreon down to 0% Ultimate+.
- Solo heists log to your stats under location "solo" - see [`/heist-stats`](heist-stats.md).
