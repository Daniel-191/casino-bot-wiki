# Can I customize the bot?

**Short answer:** Limited customization for server admins, but most settings are global.

## What you can customize

### Server-level (admin permissions required)

- **Channel restrictions** - limit which channels Paradise Bot responds in. See [Restrict commands to channels?](restrict.md).
- **Disable specific commands** - admins can selectively disable commands per server through the bot's admin UI.
- **Bot prefix** - Paradise Bot is **slash-commands only**, so there's no prefix to customize.
- **Roles** - assign Patreon-tier-style cosmetic roles via integrations.

### User-level

- **TOS acceptance** (one-time, required) - see [`/tos`](../features/other/tos.md).
- **Toggle incoming payments** - see [`/transactions_toggle`](../economy/money-management/transactions-toggle.md).
- **Pet name** - rename your pet (2-week cooldown). See [`/pets`](../features/pets/pets.md).
- **Patreon role flair** - comes automatically with subscription tiers.

## What you can't customize

- The actual game mechanics, payouts, multipliers, or cooldowns are global and cannot be changed per-server.
- Random number generation is server-side and not configurable.
- Currencies are bot-wide (one shared "$" balance across all servers you use the bot in).

## See also

- [Restrict commands to channels](restrict.md)
- [Why are commands restricted?](restricted.md)
