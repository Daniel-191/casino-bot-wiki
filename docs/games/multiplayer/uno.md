# /uno

🃏 UNO for up to 6 players. Everyone pays the same entry fee, the host picks the house rules, and the first player to empty their hand takes the whole pot. The game is played in your DMs so nobody can see your cards.

## Description

You start a lobby in a server channel with an entry fee. Anyone can join by paying that fee, and every fee goes into one pot. Once the host starts the game, the bot deals 7 cards to each player and sends everyone a private DM containing their hand, the table, and the buttons they play with.

The channel keeps a public board showing whose turn it is and how many cards everyone is holding, so people can follow along without seeing any hands. Under the pile it also draws a **Recently played** strip: the last eight cards in the order they were played, each under the name of whoever played it, with the live card lit up on the right. The same picture is attached to every player's DM, so the table is always right above your hand.

Because the cards are drawn, they are not also written out: the **Recent** text under the table only lists the things a picture cannot show - who drew, who picked up a penalty, who got skipped, who is down to their last card.

The board also carries a link button per player straight into their own DM with the bot, so anyone can get back to their hand from the channel in one tap.

## Required Fields

- **bet** - the entry fee every player pays to join. There is **no maximum** - if you want a $100T buy-in, you can have one.

## Usage

`/uno [bet]`

## Examples

`/uno 100k`
`/uno 5m`
`/uno 100t`

## You must have DMs enabled

The whole game runs in your DMs, so the bot checks whether it can message you **before** it takes your entry fee. If your DMs are closed you are told immediately and charged nothing.

To fix it: **Server settings → Privacy Settings → Direct Messages** (or User Settings → Content & Social), then join again.

If your DMs close between joining and the game starting, you are dropped from that game and refunded automatically.

## Match flow

1. Host runs `/uno` with an entry fee - the lobby appears in the channel.
2. Players press **Join**. Each one pays the entry fee into the pot.
3. The host can press **Rules** to configure the house rules (see below).
4. The host presses **Start**, or the lobby starts on its own once 6 players have joined.
5. Everyone gets a DM with their hand and the table. Play goes around in turn.
6. The first player to get rid of all their cards wins the **entire pot**, including their own stake.

Minimum 2 players, maximum 6. The lobby embed counts down from 5:00; when it hits zero the game starts automatically if at least 2 players joined, otherwise the lobby expires and everyone is refunded.

## Playing your turn

Your DM shows two pictures: the table, then your hand. The table is the same image the channel gets - the draw pile and the card on top of it, the colour in play, the direction, who is on the clock, the recently played cards, and one row per player showing a card back and the number of cards they are holding.

Your hand is sorted by colour and numbered. The cards you can play **right now** are lifted up and outlined in gold; everything else is greyed out. The strip above your cards repeats the card you have to match and the colour in play, so you never have to scroll back to the table image. Those numbers are exactly the numbers the dropdown lists.

When your turn starts, your game message is re-sent at the bottom of the DM so you actually get a notification, and the description carries a live countdown to your deadline.

- **Play a card** - a dropdown listing only the cards you can legally play. Each entry says why it is legal (matching colour, matching number, matching symbol, wild, or adding to a stack).
- **Quick play** - plays one of your legal cards at random, without opening the dropdown. Wild cards are held back unless a wild is the only thing you can play, in which case the colour is picked for you (whichever you hold most of). You are told privately what it played.
- **Draw a card** - take a card from the pile.
- **Pass** - appears after you have drawn, to end your turn.
- **How to play** - a private rules card, including the house rules this round is using.
- **Quit game** - leave the round. Your entry fee stays in the pot.
- **Back to the table** - a link button that jumps straight to the server channel the match is being played in, so you can switch between your DMs and the public board in one tap.

Playing a Wild or Wild Draw Four then asks you which colour to continue with.

## Turn timer

You have **60 seconds** per turn. If you run out of time the bot plays a legal card for you, or draws and passes if you have none.

Miss **3 turns in a row** and you are dropped from the round. Your cards go back into the deck and your entry fee stays in the pot for the winner.

## House rules

The host configures these before starting. The defaults are the official Mattel rules.

### Draw rule

| Option | Effect |
|---|---|
| **Draw 1, may play it** *(default)* | Official rule. Draw one card, and play it right away if it fits. |
| **Draw 1, turn passes** | Draw one card and your turn ends, even if the card was playable. |
| **Draw until playable** | Keep drawing until you get a card you can play. |

### Stacking

| Option | Effect |
|---|---|
| **No stacking** *(default)* | Official rule. A +2 or +4 is drawn immediately and that player is skipped. |
| **+2 on +2 only** | A +2 can be stacked onto a +2. A +4 never stacks. |
| **+2 and +4 stack** | A +4 can be played onto a +2, but a +2 cannot be played onto a +4. |
| **Any draw card stacks** | +2 and +4 stack onto each other freely. |

When stacking is on, the penalty piles up and lands entirely on the first player who cannot or will not add to it.

### Extra rules

| Option | Effect |
|---|---|
| **Seven-Zero** | Play a **7** to swap hands with a player of your choice. Play a **0** to make everyone pass their hand along in the direction of play. |
| **Force play** | If you hold a legal card you must play it - the Draw button is disabled. |

### Remembering your rules

At the bottom of the Rules menu is a **Remember these rules** button. Turn it on and your current selection is saved as your personal default, so every lobby you host from then on opens with those rules already set - no need to reconfigure them each game.

- The button turns green and reads **Remembering these rules** while the setting is on. Any further change you make in the menu is saved too.
- Turn it off to forget the saved rules; the next lobby you host starts on the official defaults again.
- The saved rules belong to you, not to the server, and only apply to lobbies you host.

## Calling UNO

There is no UNO button and nothing to catch. The moment your hand drops to one card the bot announces it for you - your card count turns red on the table image and the line goes into the Recent log for everyone to see. Pick anything up and it clears again.

## Other rules worth knowing

- A Wild Draw Four can be played whenever you like and cannot be challenged.
- With only 2 players left, a **Reverse** acts as a **Skip** - you play again.
- The starting card is always a number card, so no action card fires before anyone has had a turn.
- If the draw pile runs out, the discard pile is reshuffled back into it.
- Going out on a +2 or +4 still makes the next player pick those cards up.

## Notes

- **Cooldown:** 5 seconds.
- **Min bet:** $10,000. **No maximum** - the entry fee is uncapped.
- Winner takes the full pot. The bot takes no cut.
- You can only be in **one game at a time** across the whole bot.
- Everyone is refunded automatically if the lobby is cancelled, expires with too few players, or the game hits an error.
- Only one UNO lobby can run per channel at a time. The channel is free again the moment the match starts in DMs, or if the lobby is abandoned.
