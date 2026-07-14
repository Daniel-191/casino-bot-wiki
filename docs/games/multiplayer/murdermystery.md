# /murdermystery

Social-deduction party game for 4–15 players. Killers pick off the innocent team at night; detectives investigate; meetings vote out suspects. Last side standing splits the prize pot.

## Description

A snappy Discord take on Among Us / Mafia. The host opens a lobby with an entry fee; players who join pay the same fee into a shared pot. Once the game starts, it alternates between **night rounds** (~2 min) and **meetings** (~2 min). A persistent status panel reposts itself to the bottom of the channel whenever something changes, so you never have to scroll back to find the buttons.

## Optional Fields

- **entry_fee** - Per-player buy-in (`k`, `m`, `max`, `half` supported; default `10k`). Must meet the bot's minimum bet.
- **max_players** - Maximum players in lobby (4–15, default `10`).
- **killers** - Number of killers (1–3, default `1`).

## Usage

`/murdermystery [entry_fee] [max_players] [killers]`

## Examples

`/murdermystery`
`/murdermystery entry_fee:50k`
`/murdermystery entry_fee:1m max_players:12 killers:2`
`/murdermystery max_players:15 killers:3`

## Free NPC test

`/murdermystery-npctest [npc_count] [killers] [your_role]`

Free practice mode against NPC players. NPC killers and guardian angels auto-play; other NPC roles idle (so NPC detectives/doctors are basically wasted slots).

- **npc_count** - Number of fake players (3–14, default `7`).
- **killers** - Number of killers (1–3, default `1`).
- **your_role** - Force your own role (`random`, `killer`, `detective`, `guardian_angel`, `doctor`, `juggernaut`, `civilian`).

## Player requirements

| Killers | Minimum players |
|---|---|
| 1 | 4 |
| 2 | 6 |
| 3 | 7 |

## Roles

- **Killer** - Picks one player to eliminate each night. 10-second wait after the round starts before the first kill of the round.
- **Detective** - Investigates a player and posts a public read: **SUSPICIOUS** or **INNOCENT**. Reads have a 15% chance to flip, so cross-check before voting. Investigations per round = `max(2, alive // 5)`.
- **Guardian Angel** - Picks one player to protect each night. A killer's attack on the protected player is blocked. Available at 5+ players.
- **Doctor** - Once per game, revive a dead player. Available at 6+ players.
- **Juggernaut** - Automatically survives the first **two** killer attacks. Still vulnerable to vote-outs. Available at 7+ players.
- **Civilian** - No special powers; discuss, vote, survive.

Detectives are assigned 1 per 6 players (minimum 1). One guardian angel / doctor / juggernaut slot is added as the lobby grows past the thresholds above.

## Game flow

1. **Lobby** - players join via button; host starts manually. Lobby expires after **10 minutes** of inactivity, refunding all entry fees.
2. **Role reveal** - each player gets their role by DM (ephemeral fallback if DMs are closed). Night begins after a short 5-second pause.
3. **Night round (~2 min)** - killers/detectives/guardian angels/doctors act. The status panel reposts on every action. Round ends early when all alive killers have acted.
4. **Meeting (~2 min)** - 30 seconds of discussion, then ~75 seconds of voting. Players can skip or vote a target. Live vote tally shown on the panel.
5. Repeat night/meeting until one side wins.
6. **Auto-cleanup** if a game runs longer than **60 minutes**; entry fees and unsettled penalties are refunded.

## Status panel

Instead of scattered action messages, the game shows a single **status panel** that gets reposted whenever something happens. It always shows:

- Current phase (Night N, Discussion, or Voting)
- Alive / dead counts, killers remaining, prize pot
- Live vote tally during meetings
- Buttons for whatever action makes sense in this phase

When discussion bumps the panel up the channel, an action (kill, vote, etc.) automatically reposts it at the bottom.

## Economy

- **Entry fee** is deducted on join and added to the pot.
- **Leaving the lobby** before start refunds your fee.
- **Wrongful-vote penalty:** if the meeting eliminates an *innocent* player, every innocent voter who voted for them is fined `max(1, entry_fee / 4)` from their wallet (capped at current balance). The fine is added to the pot.
- **Catching a killer:** voters credited with eliminating a killer earn "catch" credit, boosting their share of the final pot.
- **NPC test mode** uses no money — no penalties, no payouts.

## Win conditions

- **Innocents win** when all killers are eliminated.
- **Killers win** when alive killers ≥ alive innocents.

## Reward split

The pot is split among **human** winners by score (NPCs never collect):

- **Innocents** score = `1 + (catches × 3) + (1 if alive) − wrong_votes`, floored at 1.
- **Killers** score = `1 + (kills × 2) + (1 if alive)`, floored at 1.

Each winner gets `pot × score / total_score`, with any remainder going to the top scorer.

## Notes

- **Cooldown:** 5 seconds (host).
- **One game per channel** at a time.
- Lobby and game both auto-clean if abandoned, refunding fees and penalties.
- The host can leave during the lobby; host transfers to the next remaining player.
- Re-DM your role any time with the **Get Role Info** button.
