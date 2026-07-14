# /pets

Open your pet - adopt a new one, feed/play/clean/rest, work for money, or check another user's pet.

## Description

This is the entire pet system in one command. Run it and you get an interactive embed with your pet's portrait, all four stats, level/XP bar, and buttons for every action. If you don't have a pet yet, this command is also where you adopt one.

If your pet died from neglect, this command shows the funeral payment view instead - pay it to clear the death and adopt fresh.

## Optional Fields

- **user** - View another player's pet (read-only).

## Usage

`/pets [user]`

## Examples

`/pets`
`/pets @username`

## Buttons available

| Button | What it does |
|---|---|
| **🍖 Feed** | Restores hunger; consumes food cost from your wallet |
| **<:badminton:> Play** | Restores happiness; uses energy |
| **🛁 Clean** | Restores cleanliness |
| **🛏️ Rest** | Restores energy (no cooldown) |
| **<:bag:> Work** | Earns money based on stats × level. **Perfect care (all 80+) = 3× payout** |
| **⚙️ Settings** | Rename pet, switch pet, adoption / funeral options |
| **📖 Help** | Built-in topical help (Pet Types, Stats, Leveling, Cooldowns, Earnings, Care Tips, Fishing comparison) |

## First-time adoption

If you don't have a pet, the command opens the **Pet Creation View** - pick from Dog, Cat, Bird, Rabbit, Hamster, Fish, or Unicorn, then name it.

## Active-session lock

Only one `/pets` session can be open per user. If you have a stuck session you'll see a "Force Start New Session" button - that clears the old session and starts fresh.

## Settings cooldowns

- **Rename:** 2 weeks between renames.
- **Switch pet (delete and adopt new):** 1 week between switches. Requires typing `DELETE` to confirm.

## Notes

- **Cooldown:** 3 seconds (slash-command rate limit).
- **One pet per user.** Switching deletes the old pet permanently.
- **Death after 5 days** of zero care. A funeral fee blocks new adoptions until paid.
- **Earnings scale with stats × level** - see the [Pets index](index.md#earnings-work-payouts) for the full per-tier table.
- For detailed lifetime stats, see [`/pet-stats`](pet-stats.md).
- Equal-payout alternative system: [Fishing](../fishing/index.md).
