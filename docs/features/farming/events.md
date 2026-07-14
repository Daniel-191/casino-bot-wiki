# /farming-events

View the last few farming events that fired - and whether they affected your crops.

## Description

Random crop events trigger throughout the day and either **buff** or **debuff** all crops that were already planted at the time. This command shows you the **5 most recent events** with timestamps, what they did, how many farmers and crops they hit, and a green check / red X for whether your own crops were affected.

If you had no crops planted when an event fired, you weren't affected - events only apply to crops that were **already in the ground**.

## Usage

`/farming-events`

## Examples

`/farming-events`

## What it shows

For each of the last 5 events:

- **Event name + emoji** (e.g. 🎃 Harvest Festival)
- **How long ago** it triggered
- **Effect** - speed boost (Xh faster), speed penalty (Xh slower), profit boost (X% more), or profit penalty (X% less)
- **Reach** - number of crops affected and number of farmers hit
- **Your status** - ✓ your crops were affected, or ✗ you had no crops growing

Plus a summary line:

- `Your Events Summary: 3/5 recent events affected your crops`
- Whether you currently have crops growing right now

## Event types

| Effect type | What it does |
|---|---|
| **Speed boost** | Cuts grow time by X hours |
| **Speed penalty** | Adds X hours to grow time |
| **Profit boost** | Adds X% to sell price |
| **Profit penalty** | Subtracts X% from sell price |

Rarities range from common buffs to legendary jackpot events like **Harvest Festival** (massive profit boost across all farmers).

## How to benefit

Plant crops and **leave them growing**. Events only help if you have something in the ground when they fire - empty slots get nothing, even if a legendary event hits. Plant strategically and check this command to see if your timing paid off.

## Notes

- **Public command** - anyone can run it.
- Shows only the **last 5 events** the bot has fired.
- Events fire automatically; admins can manually trigger via `/crop-event` (admin-only).
- For full farm management, see [`/farming`](farming.md). For totals, see [`/farming-stats`](stats.md).
