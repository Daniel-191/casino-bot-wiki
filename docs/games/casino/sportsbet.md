# /sportsbet

Place real-money bets on **live sports games** using real-time odds from The Odds API. Bets resolve automatically when the game ends.

## Description

Run `/sportsbet` to open the **Sports Betting Hub**. Pick a sport, browse upcoming games, and place a bet on a team - the multiplier (odds) shown is the real-world bookmaker payout. When the game finishes, the bot checks the result and credits or debits your account automatically.

This is the most "real casino" game in the bot - no internal RNG, just live data.

## Required Fields

None - the command opens an interactive selector. Pick your sport and game from menus.

## Usage

`/sportsbet`

## Examples

`/sportsbet`

(Run the command, then use the dropdowns and buttons to navigate.)

## Available sports

| Category | Leagues |
|---|---|
| **American Football** | NFL, College Football (NCAAF) |
| **Basketball** | NBA, WNBA, College (NCAAB) |
| **Baseball** | MLB, KBO |
| **Ice Hockey** | NHL |
| **Soccer** | Premier League, Champions League, La Liga, Bundesliga, Ligue 1, Serie A, MLS |
| **Combat** | MMA, Boxing |
| **Tennis** | ATP Wimbledon / US Open / French Open |
| **Rugby / Aussie Rules** | NRL, AFL |
| **Cricket** | IPL |

Availability depends on the season - only games with active markets show up.

## How odds work

Odds are displayed as **decimal multipliers**:

- **Team A `2.50` vs Team B `1.80`** means $100 on Team A pays $250 on win, $100 on B pays $180 on win.
- **Lower number = more likely to win.**
- The implicit margin is the bookmaker's edge (typically 4–10%).

## Limits

- **Min bet:** $100
- **Max bet:** $30 trillion per single bet
- **Max active bets:** 15 pending bets per user (counted on games that haven't started yet or are within ~4 hours of start)

## Notes

- **Cooldown:** 10 seconds (longest of any casino game - anti-spam).
- Bets are **stored in a separate database** with full audit logging.
- A background task **automatically checks completed games** and credits winnings without you needing to do anything. Payouts typically land within a few hours of the game ending.
- Live odds come from The Odds API and are cached for up to ~3 hours, so the odds you see may lag the bookmakers slightly. The odds shown when you place your bet are the odds you get.
- If the system is down, you'll see "Sports Betting Unavailable" - this usually clears within a few minutes.
- Internal **rate limiter** prevents bet spam; you'll see a warning if you hit it.
