# Emojis aren't working

**Short answer:** Paradise Bot uses custom emojis from a private Discord server. If the bot can't access them, they show up as broken `:emoji_name:` text or blank squares.

## Why it happens

Paradise Bot's embeds use **custom Discord emojis** hosted in a private guild. Custom emojis only render correctly when:

1. The user (you) is in a server where Discord can see them, **or**
2. The bot has permission to use external emojis in your channel.

If neither is true, the emoji shows as raw text like `<:bag_of_money:1375759016759922720>` or just appears blank.

## Fix

### As a user

- Make sure you're a member of the **Paradise Bot support server** so Discord recognizes the emojis. Use [`/links`](../features/other/links.md) to get the invite.
- Update your Discord client - older versions sometimes can't render newer custom emojis.

### As a server admin

Grant the bot the **Use External Emojis** permission in your server / channel:

1. Server Settings → Roles → Paradise Bot's role.
2. Enable **Use External Emojis** and **Use External Stickers**.
3. Also check channel-level permission overrides.

## See also

- [`/links`](../features/other/links.md) - invite to support server
- [Why are commands restricted?](restricted.md)
