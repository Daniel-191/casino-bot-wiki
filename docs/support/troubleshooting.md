# Troubleshooting

Common Paradise Bot issues and how to fix them.

## Bot Isn't Responding

**Check the basics first:**

1. **Use slash commands** - All commands start with `/`. The bot does not respond to text prefixes.
2. **Bot is online** - Look for the green status dot next to the bot's name.
3. **Permissions** - The bot needs `Send Messages`, `Embed Links`, `Use Slash Commands`, and `Read Message History` in the channel.
4. **Right channel** - Some servers restrict bot use to specific channels. Ask an admin if you're unsure.
5. **Try a different channel** - Rules out a channel-specific permission issue.

If the bot still doesn't respond, it may be down. Check the [support server](contact.md) for status.

## My Balance Looks Wrong

Balances don't change without a reason. Check:

- **Recent activity** - `/history` shows your last transactions
- **You got robbed** - Other players can use `/rob @you`. Check notifications.
- **Server-wide events** - Some servers run economy resets or bonus events.
- **Property/farm taxes** - Recurring upkeep is deducted automatically.

If you're sure something is wrong, file `/bug <description>` with as much detail as possible.

## Commands Are Slow or Time Out

This usually means high load - either Discord's API or the bot itself.

- Wait a minute and try again
- Check the [support server](contact.md) for known incidents
- Avoid spamming the same command - it makes things worse

## "You're on cooldown"

Most income commands (`/daily`, `/hourly`, `/beg`, `/crime`) have cooldowns. The error message tells you when you can run them next. Patrons get reduced cooldowns.

## A Specific Game Is Broken

Use `/bug <description>` and include:

- The game and command you ran
- What you expected to happen
- What actually happened
- Approximate time

Screenshots help. If the game ate your money, the developer can usually refund once verified.

## "You don't have permission"

Some commands are admin-only. If you think you should have access:

- Ask a server admin to check the bot's role configuration
- Some commands require `Administrator` or `Manage Server` Discord permissions

## I Was Banned by Mistake

Open a ticket in the [support server](contact.md). Include your Discord ID and a brief explanation. Bans aren't reversed without context, so be specific.

## Still Stuck?

- **[FAQ](faq.md)** - Common questions
- **[Contact](contact.md)** - Reach the developer
