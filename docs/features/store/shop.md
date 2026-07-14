# /shop

Browse and buy bank vault upgrades. Each tier increases your **bank storage cap** so you can deposit more money safely.

## Description

Opens the bank vault shop with all 15 tiers. Higher tiers cost more money but unlock vastly bigger bank capacity. Bank money is safe from `/rob` and earns daily interest at 11:00 UTC, so capacity matters once you start accumulating.

## Usage

`/shop`

## Examples

`/shop`

## Bank tier ladder

| Tier | Capacity | Price | Cumulative price |
|---|---|---|---|
| 🏦 **Basic** | $1B | Free | $0 |
| 🥉 **Bronze** | $5B | $500M | $500M |
| 🥈 **Silver** | $25B | $2.5B | $3B |
| 🥇 **Gold** | $100B | $12.5B | $15.5B |
| 💎 **Platinum** | $500B | $75B | $90.5B |
| 💠 **Diamond** | $2T | $400B | ~$490B |
| 💚 **Emerald** | $5T | $1.25T | ~$1.7T |
| ❤️ **Ruby** | $10T | $3T | ~$4.7T |
| 💙 **Sapphire** | $20T | $7.5T | ~$12.2T |
| 🖤 **Obsidian** | $35T | $15T | ~$27.2T |
| ✨ **Celestial** | $50T | $25T | ~$52.2T |
| ⚛️ **Quantum** | $100T | $40T | ~$92T |
| 🌌 **Void** | $200T | $85T | ~$177T |
| ♾️ **Infinity** | $500T | premium | - |
| 🌠 **Multiverse** | $1Q | premium | - |

## How upgrades work

- Each upgrade is a **one-time purchase** - once you buy a tier, it's permanent.
- You can only buy the next tier in sequence (must own Bronze before buying Silver, etc.).
- After buying, your capacity increases immediately.
- Upgrade prices come straight from your wallet - make sure you have the money before clicking.

## Why upgrade?

- **Bigger bank cap** = safer storage. Wallet money is at risk from `/rob`; bank is not.
- **More daily interest** - bank interest compounds on your stored balance, so a bigger cap means a bigger interest payment at 11:00 UTC.
- Patreon members get an additional **bank capacity bonus** stacking with their tier.

## Notes

- **Cooldown:** standard slash-command rate limit.
- Buying is **non-refundable**.
- For moving money in/out of your bank, see [`/deposit`](../../economy/money-management/deposit.md) and [`/withdraw`](../../economy/money-management/withdraw.md).
- For the external Patreon store, see [`/store`](store.md).
