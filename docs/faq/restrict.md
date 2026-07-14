# Can I disable or restrict commands to certain channels?

**Short answer:** Yes - Paradise Bot supports per-channel and per-command restrictions for server admins.

## How it works

Server admins can restrict Paradise Bot to specific channels using Discord's built-in **channel permissions** plus the bot's admin commands.

### Discord-level (no bot help needed)

Paradise Bot only responds where it has the **Send Messages**, **Use Slash Commands**, and **Embed Links** permissions. Remove those in the channel's permission overrides and the bot becomes silent there.

## Recommended setup

- Create a dedicated `#bot-spam` or `#casino` channel.
- Lock the bot to that channel via channel permissions.
- Keep the rest of your server clean.

## See also

- [Why are commands restricted?](restricted.md) - for users hitting "this command is restricted" errors.
- [Can I customize the bot?](customize.md)
