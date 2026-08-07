# Quest reminders

A DM that warns you before your daily quest set expires.

## Description

When enabled, the bot DMs you in the **last 4 hours before the 00:00 UTC reset** if your daily streak is still at risk. It tells you how many objectives you are short and how long you have.

This is off by default and entirely opt-in.

## Usage

There is no separate command. Run [`/quests`](quests.md) and click the **Reminders** button under the tabs:

- **Red** - reminders are off. Click to turn them on.
- **Green** - reminders are on. Click to turn them off.

## When it fires

The reminder only goes out if **all** of these are true:

- reminders are switched on
- there are **4 hours or fewer** left before the daily reset
- you have completed **fewer than 2** of your four dailies - the bar for [keeping your streak](index.md#streak-freezes), not for clearing the whole set
- you have not already had a reminder today

So finishing 2 of 4 stops the DM even with two quests still open, because your streak and your stack are already safe.

## Notes

- At most **one reminder per day**, and only while your streak is genuinely at risk.
- The check runs **hourly**, so the DM lands somewhere in the last four hours rather than at an exact time.
- If your DMs are closed the bot gives up after **5** failed attempts. Toggling the button off and on resets that counter.
- Reminders are the easiest way to protect a long combo streak - see [decay](index.md#decay).
- The DM is sent in the bot's default language.
