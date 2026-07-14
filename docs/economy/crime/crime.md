# /crime

Run a criminal operation. Pick from four risk tiers and watch your heist play out in real-time animated phases.

## Description

Opens the Criminal Operations panel where you select a target tier (Pickpocket, Bank, Casino, or Crypto). Each crime runs through several phases - scouting, infiltration, execution - before resolving. Successes pay big and have a chance to roll a **bonus multiplier**; failures lose you a smaller amount and put your cooldown back on the clock.

## Usage

`/crime`

## Crime types

### Pickpocket - Low Risk
- **Success rate:** 85%
- **Reward:** $500,000 – $1,200,000
- **Loss on fail:** $10,000 – $50,000
- **Bonus:** 25% chance, 2.5× multiplier
- **Phases:** Scouting → Positioning → Execution
- Best for steady income with minimal downside.

### Bank Heist - High Risk
- **Success rate:** 65%
- **Reward:** $5M – $15M
- **Loss on fail:** $200K – $500K
- **Bonus:** 15% chance, 4× multiplier
- **Phases:** Infiltration → System Bypass → Vault Access → Asset Extraction → Escape

### Casino Heist - High Risk
- **Success rate:** 55%
- **Reward:** $8M – $25M
- **Loss on fail:** $300K – $800K
- **Bonus:** 12% chance, 5× multiplier
- **Phases:** Floor Entry → Target Positioning → System Infiltration → Operation Execution → Cash Conversion

### Crypto Hack - Extreme Risk
- **Success rate:** 35%
- **Reward:** $25M – $100M
- **Loss on fail:** $1M – $3M
- **Bonus:** 3% chance, 10× multiplier (huge payout if it lands)
- **Phases:** Network Recon → Firewall Penetration → Key Extraction → Cold Storage Access → Asset Transfer

## Notes

- **Cooldown:** 1 hour. Patreon T3+ reduces to ~39 minutes (T1: 10%, T2: 20%, T3+: 35%).
- The cooldown is set the moment you open the panel - even if you don't pick a crime. Choose carefully.
- A portion of every successful crime goes to the **lottery pool tax**.
- Use [`/crimestats`](crimestats.md) to compare odds and payouts before running.
- See [`/cooldowns`](../money-management/cooldowns.md) to check when your next crime is available.
