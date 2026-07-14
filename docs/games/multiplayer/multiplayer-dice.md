# /multiplayer_dice

Group dice elimination. Every round picks a "death number" - anyone who rolls it is out. Last player standing takes the entire pot.

## Description

The host opens a lobby with an entry fee. Other players join and pay the same fee. Once the host hits **Start** (minimum 2 players), each round the bot picks a random elimination number 1–6 and rolls one die for every remaining player. Roll the death number and you're out.

Last player standing wins the full pot: `entry_fee × number of players`.

## Required Fields

- **entry_fee** - Buy-in each player pays to join.

## Usage

`/multiplayer_dice [entry_fee]`

## Examples

`/multiplayer_dice 100k`
`/multiplayer_dice 1m`
`/multiplayer_dice max`

## Lobby flow

1. Host runs the command - entry fee deducted, lobby embed posted.
2. Other players see **Join** / **Start** / **Cancel** buttons.
3. Host clicks **Start** when ready (minimum **2 players**).
4. If the host cancels, all entry fees are refunded.

## Round mechanics

Each round:

1. Bot picks a random **death number** (1–6) with a suspense reveal.
2. Every remaining player rolls one die.
3. Anyone rolling the death number is **eliminated**.
4. Survivors continue to the next round.
5. **Mercy round:** if every remaining player rolls the death number, nobody is eliminated and the round repeats.

Repeat until only one player remains - they take the whole pot.

## Pot mechanics

- Each player pays `entry_fee` (deducted up-front).
- **Winner takes:** `entry_fee × total players`.
- Cancelled lobby = full refund to everyone.

## Notes

- **Min entry fee:** $10,000.
- **Max entry fee:** standard MAX_BET (bet bypass users excepted).
- **Minimum 2 players** to start.
- **Only one Multiplayer Dice game per channel** at a time.
- Host can't start their own game while already hosting another.
- For solo dice, see [`/dice`](../casino/dice.md) or `/multidice`.
- For 1v1 dice duel, see [`/diceduel`](diceduel.md).
