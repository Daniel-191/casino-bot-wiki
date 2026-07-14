# Settings

Per-user and per-server settings you can tweak.

## Per-user settings

| Setting | Command | Default |
|---|---|---|
| Block incoming `/pay` payments | [`/transactions_toggle`](../economy/money-management/transactions-toggle.md) | Open (allow incoming) |
| TOS acceptance | [`/tos`](../features/other/tos.md) | Required once |
| Auto-replant farming (donator) | In `/farming` settings menu | Off (donator only) |
| Pet auto-care | Built into `/pets` UI | Off |
| Anti-selfbot verification | `/verify` | Required when prompted |
| Pet name | `/pets` rename button (2-week cooldown) | Auto-assigned |

## Per-server settings (admin only)

Admins can configure:

- Channel restrictions - see [Restrict commands to channels?](../faq/restrict.md).
- Disable specific commands per server.
- Role-based command gates.

These are accessed through admin slash commands.

## Patreon-only settings

Donator tiers unlock additional toggles:

- **Auto-replant farming** - automatically harvest and replant ready crops (small profit tax applies).
- **0% heist tax** at Tier 6+.

Activate Patreon perks by linking your Patreon account and joining the main Paradise server.

## What you can't change

- Game payouts and multipliers - global and immutable.
- RNG seed - system clock + `random` library, not configurable.
- Currency type - single global "$" balance shared across servers.

## See also

- [About Paradise Bot](about.md)
- [Can I customize the bot?](../faq/customize.md)
- [Patreon Shop](../features/store/patreon.md)
