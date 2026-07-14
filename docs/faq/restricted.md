# Why is the bot saying all commands are restricted?

**Short answer:** The server admin has restricted Paradise Bot to a specific channel - try moving to that channel.

## Common causes

### 1. Channel restriction (most common)

The server admin set up **channel restrictions** through the bot or Discord permissions. Paradise Bot responds in dedicated channels (e.g., `#casino` or `#bot-spam`) but ignores you everywhere else.

**Fix:** Find your server's bot channel and run commands there. Ask a moderator if you're not sure which channel.

### 2. Missing permissions for the bot

The bot doesn't have **Send Messages**, **Use Slash Commands**, or **Embed Links** in your current channel.

**Fix (admin):** Grant the bot those permissions in the channel's permission overrides.

### 3. You haven't accepted TOS

Most commands require TOS acceptance. If you've never accepted, you'll get a TOS prompt that may look like a restriction.

**Fix:** Run [`/tos`](../features/other/tos.md) and click **Accept**.

### 4. You're banned from the bot

If a moderator/admin has banned your account from Paradise Bot, every command will refuse.

**Fix:** Open a support ticket via [`/links`](../features/other/links.md) - Discord support server.

### 5. Maintenance mode

The bot owner has put Paradise Bot into **maintenance mode** for an update. Most commands return a maintenance message.

**Fix:** Wait - usually a few minutes. Check the support server for status updates.

## See also

- [Can I customize the bot?](customize.md)
- [Restrict commands to channels?](restrict.md)
- [`/tos`](../features/other/tos.md)
