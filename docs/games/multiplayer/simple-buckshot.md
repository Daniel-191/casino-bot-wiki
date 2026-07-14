# /simple-buckshot

Group battle-royale gun game. A lobby opens, anyone can join, and players take turns passing a loaded gun until one person is left standing.

## Description

`/simple-buckshot [entry_fee] [max_players]`

- **entry_fee** - Wager each player pays to enter. Deducted on join.
- **max_players** *(optional)* - Cap the lobby size. `0` = unlimited.

### Examples

`/simple-buckshot 50k`
`/simple-buckshot 1m 8`

## How it works

1. Host runs `/simple-buckshot`; a lobby embed opens with **Join / Leave / Start / Cancel** buttons.
2. Lobby stays open for up to **5 minutes** — minimum 2 players required to start.
3. Entry fee is deducted from each player when they join. Pot = `entry_fee × player count`.
4. Once started, players take turns in order. Each turn the gun fires with **~1/3 live shell probability**.
   - **Live** → that player is eliminated.
   - **Blank** → nothing happens, turn passes.
5. Eliminated players are out. Last survivor wins the entire pot.

## Notes

- **Min bet:** $10,000. No max bet cap.
- Lobby expires after 5 minutes with fewer than 2 players — all entry fees are refunded.
- One active game per channel at a time.
- This is a separate game from [`/buckshot`](buckshot.md) (the 1v1 shotgun strategy game with items).
