param(
  [switch]$Force
)

$ErrorActionPreference = 'Stop'
$root = Join-Path $PSScriptRoot 'docs'

function Write-Stub {
  param(
    [string]$RelPath,
    [string]$Content
  )
  $full = Join-Path $root $RelPath
  $dir = Split-Path $full -Parent
  if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
  if ((Test-Path $full) -and -not $Force) {
    Write-Host "skip  $RelPath"
    return
  }
  Set-Content -Path $full -Value $Content -Encoding utf8
  Write-Host "write $RelPath"
}

function Cmd-Stub {
  param([string]$Name, [string]$Usage = '', [string]$Desc = '')
  if (-not $Usage) { $Usage = "/$Name" }
  if (-not $Desc) { $Desc = "Brief description of what ``/$Name`` does." }
  return @"
# /$Name

!!! note "Stub Page"
    This page is a placeholder. Content coming soon.

## Description

$Desc

## Usage

``$Usage``

## Example

``/$Name``

## Notes

- _Add caveats, cooldowns, or quirks here._
"@
}

function Page-Stub {
  param([string]$Title, [string]$Body = '')
  if (-not $Body) { $Body = '_Content coming soon._' }
  return @"
# $Title

!!! note "Stub Page"
    This page is a placeholder. Content coming soon.

$Body
"@
}

# ---- GENERAL INFORMATION ----
Write-Stub 'general/about.md'      (Page-Stub 'About Paradise Bot' 'What Paradise Bot is, who built it, and what it does.')
Write-Stub 'general/upgrades.md'   (Page-Stub 'Upgrades' 'Permanent upgrades you can buy with coins to expand your bank, farm, and more.')
Write-Stub 'general/supporting.md' (Page-Stub 'Supporting the Bot' 'Patreon perks, donations, voting -- every way to support development.')
Write-Stub 'general/dashboard.md'  (Page-Stub 'Dashboard' 'Web dashboard overview (when available).')
Write-Stub 'general/rules.md'      (Page-Stub 'Rules' 'Bot rules, fair play, ban policy.')
Write-Stub 'general/settings.md'   (Page-Stub 'Settings' 'Per-user and per-server settings.')

# ---- FAQ ----
Write-Stub 'faq/customize.md'   (Page-Stub 'Can I customize the bot?')
Write-Stub 'faq/emojis.md'      (Page-Stub "Emojis aren't working")
Write-Stub 'faq/restrict.md'    (Page-Stub 'Can I disable or restrict commands to certain channels?')
Write-Stub 'faq/rigged.md'      (Page-Stub 'Is the bot rigged?')
Write-Stub 'faq/tos.md'         (Page-Stub 'What is the Terms of Service?')
Write-Stub 'faq/restricted.md'  (Page-Stub 'Why is the bot saying all commands are restricted?')

# ---- SUPPORT extras ----
Write-Stub 'support/ai-support.md'   (Page-Stub 'AI Support')
Write-Stub 'support/ask-for-help.md' (Page-Stub 'Ask for Help')
Write-Stub 'support/report-bugs.md'  (Page-Stub 'Report Bugs' 'Use ``/bugreport`` to report issues directly from any server.')
Write-Stub 'support/suggestions.md'  (Page-Stub 'Suggestions' 'Use ``/suggest`` to propose features.')

# ---- ECONOMY: Money Management ----
Write-Stub 'economy/money-management/index.md' (Page-Stub 'Money Management' 'Core commands for checking, moving, and tracking your coins.')
Write-Stub 'economy/money-management/balance.md'             (Cmd-Stub 'balance' '/balance [user]' 'Check the wallet and bank balances of yourself or another user.')
Write-Stub 'economy/money-management/deposit.md'             (Cmd-Stub 'deposit' '/deposit [amount]' 'Move coins from your wallet into your bank.')
Write-Stub 'economy/money-management/withdraw.md'            (Cmd-Stub 'withdraw' '/withdraw [amount]' 'Move coins from your bank back to your wallet.')
Write-Stub 'economy/money-management/pay.md'                 (Cmd-Stub 'pay' '/pay [user] [amount]' 'Send coins to another user.')
Write-Stub 'economy/money-management/networth.md'            (Cmd-Stub 'networth' '/networth [user]' 'Detailed wealth breakdown including properties.')
Write-Stub 'economy/money-management/leaderboard.md'         (Cmd-Stub 'leaderboard' '/leaderboard [scope]' 'View global or server wealth rankings.')
Write-Stub 'economy/money-management/transactions.md'        (Cmd-Stub 'transactions' '/transactions' 'View your recent transactions.')
Write-Stub 'economy/money-management/transactions-toggle.md' (Cmd-Stub 'transactions_toggle' '/transactions_toggle' 'Toggle whether you can receive payments.')
Write-Stub 'economy/money-management/cooldowns.md'           (Cmd-Stub 'cooldowns' '/cooldowns' 'View remaining cooldowns on income commands.')
Write-Stub 'economy/money-management/stats.md'               (Cmd-Stub 'stats' '/stats' 'Your overall game stats.')

# ---- ECONOMY: Earning ----
Write-Stub 'economy/earning/index.md' (Page-Stub 'Earning Money' 'Daily, hourly, voting, and other ways to earn coins.')
Write-Stub 'economy/earning/daily.md'           (Cmd-Stub 'daily' '/daily' 'Claim your daily reward.')
Write-Stub 'economy/earning/hourly.md'          (Cmd-Stub 'hourly' '/hourly' 'Claim your hourly reward.')
Write-Stub 'economy/earning/weekly.md'          (Cmd-Stub 'weekly' '/weekly' 'Claim your weekly reward (supporter-only).')
Write-Stub 'economy/earning/monthly.md'         (Cmd-Stub 'monthly' '/monthly' 'Claim your monthly reward (supporter-only).')
Write-Stub 'economy/earning/beg.md'             (Cmd-Stub 'beg' '/beg' 'Beg for a small amount of coins.')
Write-Stub 'economy/earning/vote.md'            (Cmd-Stub 'vote' '/vote' 'Vote for the bot on listing sites for rewards.')
Write-Stub 'economy/earning/vote-milestones.md' (Cmd-Stub 'vote-milestones' '/vote-milestones' 'View voting milestone rewards.')

# ---- ECONOMY: Crime ----
Write-Stub 'economy/crime/index.md' (Page-Stub 'Crime System' 'Risky, high-reward criminal activities.')
Write-Stub 'economy/crime/crime.md'      (Cmd-Stub 'crime' '/crime' 'Commit a crime for risky coin gains.')
Write-Stub 'economy/crime/crimestats.md' (Cmd-Stub 'crimestats' '/crimestats' 'View your crime history and success rate.')

# ---- ECONOMY: Robbery ----
Write-Stub 'economy/robbery/index.md' (Page-Stub 'Robbery' 'Rob other players for their coins.')
Write-Stub 'economy/robbery/rob.md'   (Cmd-Stub 'rob' '/rob [user]' 'Attempt to rob another player. Cooldowns and counter-defenses apply.')

# ---- ECONOMY: Scratch Tickets ----
Write-Stub 'economy/scratch/index.md' (Page-Stub 'Scratch Tickets' 'Earn and redeem scratch tickets for prizes.')
Write-Stub 'economy/scratch/open.md'           (Cmd-Stub 'open' '/open [ticket]' 'Open a scratch ticket.')
Write-Stub 'economy/scratch/inventory.md'      (Cmd-Stub 'inventory' '/inventory' 'View your scratch tickets.')
Write-Stub 'economy/scratch/history.md'        (Cmd-Stub 'history' '/history' 'View your scratch history.')
Write-Stub 'economy/scratch/pay.md'            (Cmd-Stub 'pay' '/pay [user] [ticket]' 'Send scratch tickets to another user.')
Write-Stub 'economy/scratch/pay-history.md'    (Cmd-Stub 'pay-history' '/pay-history' 'View your ticket transfer history.')
Write-Stub 'economy/scratch/weekly-scratch.md' (Cmd-Stub 'weekly-scratch' '/weekly-scratch' 'Claim weekly scratch ticket rewards.')
Write-Stub 'economy/scratch/stats.md'          (Cmd-Stub 'stats' '/stats' 'Scratch ticket stats.')

# ---- LOTTERY ----
Write-Stub 'features/lottery/index.md'   (Page-Stub 'Lottery' 'Pool-based lottery with daily drawings.')
Write-Stub 'features/lottery/lottery.md' (Cmd-Stub 'lottery' '/lottery' 'View the current lottery and buy tickets.')

# ---- CASINO GAMES ----
$casinoCmds = @(
  @{ n='baccarat';         u='/baccarat [bet]';             d='Classic baccarat against the banker.' }
  @{ n='blackjack';        u='/blackjack [bet]';            d='Beat the dealer to 21 without busting.' }
  @{ n='poker';            u='/poker [bet]';                d="Texas Hold'em against the dealer." }
  @{ n='coinflip';         u='/coinflip [bet] [heads/tails]'; d='The classic 50/50.' }
  @{ n='ceelo';            u='/ceelo [bet]';                d='Three-dice street game.' }
  @{ n='craps';            u='/craps [bet]';                d='Roll the bones against the house.' }
  @{ n='dice';             u='/dice [bet]';                 d='Roll dice against the house.' }
  @{ n='crash';            u='/crash [bet]';                d='Cash out before the multiplier crashes.' }
  @{ n='tower';            u='/tower [bet]';                d='Climb the tower without picking the wrong tile.' }
  @{ n='minesweeper';      u='/minesweeper [bet]';          d='Reveal safe tiles, dodge the mines.' }
  @{ n='plinko';           u='/plinko [bet]';               d='Drop a chip and watch it bounce.' }
  @{ n='slots';            u='/slots [bet]';                d='Classic 3-reel slot machine.' }
  @{ n='roulette';         u='/roulette [bet] [option]';    d='Bet on numbers, colors, or odds.' }
  @{ n='wheel-of-fortune'; u='/wheel-of-fortune [bet]';     d='Spin the wheel for prizes.' }
  @{ n='horse-race';       u='/horse-race [bet] [horse]';   d='Bet on a horse and watch it race.' }
  @{ n='sportsbet';        u='/sportsbet [event] [bet]';    d='Place bets on sporting events.' }
  @{ n='uncrossable';      u='/uncrossable [bet]';          d='Cross the road without getting hit.' }
  @{ n='rps';              u='/rps [bet] [choice]';         d='Rock paper scissors against the bot.' }
)
foreach ($c in $casinoCmds) {
  Write-Stub "games/casino/$($c.n).md" (Cmd-Stub $c.n $c.u $c.d)
}

# ---- MULTIPLAYER GAMES ----
$mpCmds = @(
  @{ n='multiblackjack';   u='/multiblackjack [bet]';       d='Multi-player blackjack table.' }
  @{ n='multidice';        u='/multidice [bet]';            d='Multi-player dice.' }
  @{ n='multiplayer-dice'; u='/multiplayer_dice [bet]';     d='Alternate multi-player dice mode.' }
  @{ n='rps-multiplayer';  u='/rps-multiplayer [bet]';      d='Group rock paper scissors.' }
  @{ n='coinflip-duel';    u='/coinflip-duel [user] [bet]'; d='50/50 duel against another player.' }
  @{ n='diceduel';         u='/diceduel [user] [bet]';      d='Highest roll wins.' }
  @{ n='russian-roulette'; u='/russian-roulette [bet]';     d='The nerve test.' }
  @{ n='buckshot';         u='/buckshot [user]';            d='Live or blank?' }
  @{ n='fight';            u='/fight [user]';               d='Turn-based combat against another player.' }
  @{ n='murdermystery';    u='/murdermystery';              d='Group murder mystery game.' }
  @{ n='chess';            u='/chess [user]';               d='Classic chess against another player.' }
  @{ n='battleship';       u='/battleship [user]';          d='Sink the enemy fleet.' }
  @{ n='connect4';         u='/connect4 [user]';            d='Get four in a row.' }
  @{ n='tictactoe';        u='/tic-tac-toe [user]';         d='Quick 3x3 round.' }
  @{ n='wordle';           u='/wordle';                     d='Guess the word in six tries.' }
)
foreach ($c in $mpCmds) {
  Write-Stub "games/multiplayer/$($c.n).md" (Cmd-Stub $c.n $c.u $c.d)
}

# ---- HEISTS ----
Write-Stub 'games/heists/index.md'       (Page-Stub 'Heists' 'Cooperative robbery missions for big payouts.')
Write-Stub 'games/heists/heist.md'       (Cmd-Stub 'heist' '/heist' 'Start or join a multi-player heist.')
Write-Stub 'games/heists/solo-heist.md'  (Cmd-Stub 'solo-heist' '/solo-heist' 'Run a heist alone.')
Write-Stub 'games/heists/heist-stats.md' (Cmd-Stub 'heist-stats' '/heist-stats' 'Your heist history and rankings.')

# ---- FARMING (sub-commands) ----
Write-Stub 'features/farming/farming.md'   (Cmd-Stub 'farming' '/farming' 'Open the main farming interface.')
Write-Stub 'features/farming/farm-view.md' (Cmd-Stub 'farm-view' '/farm-view [user]' 'View your or another user''s farm.')
Write-Stub 'features/farming/events.md'    (Cmd-Stub 'farming-events' '/farming-events' 'Active and upcoming farming events.')
Write-Stub 'features/farming/stats.md'     (Cmd-Stub 'farming-stats' '/farming-stats' 'Your farming stats and totals.')

# ---- PETS (sub-commands) ----
Write-Stub 'features/pets/pets.md'      (Cmd-Stub 'pets' '/pets' 'Open the main pets interface.')
Write-Stub 'features/pets/pet-stats.md' (Cmd-Stub 'pet-stats' '/pet-stats' 'Your pet stats and rankings.')

# ---- MINING ----
Write-Stub 'features/mining/index.md'     (Page-Stub 'Mining' 'Dig for ores, sell minerals, level up.')
Write-Stub 'features/mining/dig.md'       (Cmd-Stub 'dig' '/dig' 'Dig for ores in the current depth.')
Write-Stub 'features/mining/depths.md'    (Cmd-Stub 'depths' '/depths' 'Travel to deeper mining areas.')
Write-Stub 'features/mining/inventory.md' (Cmd-Stub 'inventory' '/inventory' 'View your mined ores and minerals.')
Write-Stub 'features/mining/profile.md'   (Cmd-Stub 'profile' '/profile' 'Your mining profile and level.')
Write-Stub 'features/mining/shop.md'      (Cmd-Stub 'shop' '/shop' 'Mining shop -- buy pickaxes and gear.')

# ---- FISHING ----
Write-Stub 'features/fishing/index.md'      (Page-Stub 'Fishing' 'Catch fish, level up, sell or collect.')
Write-Stub 'features/fishing/fish.md'       (Cmd-Stub 'fish' '/fish' 'Cast your line.')
Write-Stub 'features/fishing/fish-stats.md' (Cmd-Stub 'fish-stats' '/fish-stats' 'Your fishing stats and biggest catches.')

# ---- STOCKS ----
Write-Stub 'features/stocks/index.md'     (Page-Stub 'Stocks & Crypto' 'Trade simulated stocks and crypto with in-game coins.')
Write-Stub 'features/stocks/stocks.md'    (Cmd-Stub 'stocks' '/stocks' 'Open the stocks interface.')
Write-Stub 'features/stocks/buy.md'       (Cmd-Stub 'buy' '/buy [symbol] [amount]' 'Buy shares of a stock or crypto.')
Write-Stub 'features/stocks/sell.md'      (Cmd-Stub 'sell' '/sell [symbol] [amount]' 'Sell shares.')
Write-Stub 'features/stocks/portfolio.md' (Cmd-Stub 'portfolio' '/portfolio [user]' 'View your or another user''s portfolio.')
Write-Stub 'features/stocks/market.md'    (Cmd-Stub 'market' '/market' 'View the current market.')
Write-Stub 'features/stocks/history.md'   (Cmd-Stub 'history' '/history' 'Your trade history.')
Write-Stub 'features/stocks/news.md'      (Cmd-Stub 'news' '/news' 'Latest market news.')
Write-Stub 'features/stocks/info.md'      (Cmd-Stub 'info' '/info [symbol]' 'Detailed info on a stock or crypto.')

# ---- RESTAURANTS ----
Write-Stub 'features/restaurants/index.md'  (Page-Stub 'Restaurants' 'Run virtual restaurants for ongoing income.')
Write-Stub 'features/restaurants/subway.md' (Page-Stub 'Subway' 'Sandwich-shop simulation. Commands: /subway, /sandwich-menu, /sandwich-stats.')
Write-Stub 'features/restaurants/fries.md'  (Page-Stub 'Fries' 'Fries delivery simulation. Commands: /fries-profile, /fries-in-bag, /max-fries-upgrades, /delivery-stats.')

# ---- STORE / SHOP sub-pages ----
Write-Stub 'features/store/shop.md'    (Cmd-Stub 'shop' '/shop' 'Browse bank vault upgrades and items.')
Write-Stub 'features/store/store.md'   (Cmd-Stub 'store' '/store' 'View the store.')
Write-Stub 'features/store/patreon.md' (Page-Stub 'Patreon Shop' 'Patron-only items and perks.')

# ---- OTHER FEATURES ----
Write-Stub 'features/other/donate.md'    (Cmd-Stub 'donate' '/donate' 'Information on donating to support the bot.')
Write-Stub 'features/other/freemoney.md' (Cmd-Stub 'freemoney' '/freemoney' 'Free coin codes and giveaways.')
Write-Stub 'features/other/games.md'     (Cmd-Stub 'games' '/games' 'Browse all available games.')
Write-Stub 'features/other/links.md'     (Cmd-Stub 'links' '/links' 'Useful bot links -- invite, support, vote.')
Write-Stub 'features/other/quotes.md'    (Cmd-Stub 'quotes' '/quotes' 'Random quotes.')
Write-Stub 'features/other/tos.md'       (Cmd-Stub 'tos' '/tos' 'Bot Terms of Service.')
Write-Stub 'features/other/verify.md'    (Cmd-Stub 'verify' '/verify' 'Verify your account (anti-selfbot).')
Write-Stub 'features/other/guide.md'     (Cmd-Stub 'guide' '/guide' 'Interactive tutorial walkthrough.')
Write-Stub 'features/other/info.md'      (Cmd-Stub 'info' '/info' 'Bot info and stats.')
Write-Stub 'features/other/dashboard.md' (Cmd-Stub 'dashboard' '/dashboard' 'Open the web dashboard.')

# ---- IN CLOSING ----
Write-Stub 'closing.md' (Page-Stub 'In Closing' 'Closing notes from the developer.')

Write-Host ''
Write-Host 'Done.'
