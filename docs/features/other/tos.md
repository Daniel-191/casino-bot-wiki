# /tos

Accept Paradise Bot's Terms of Service. **Required** before you can use most commands.

## Description

The first time you use Paradise Bot, you'll be prompted to run `/tos` and click **Accept**. Once accepted, your acceptance is stored and you won't be prompted again.

If you've already accepted, this command shows the TOS link for review.

## Usage

`/tos`

## Examples

`/tos`

## Flow

1. Run `/tos`.
2. **First time:** an Accept embed appears with a green **Accept** button (60-second timeout).
3. **Already accepted:** an info embed shows links to the TOS and Privacy Policy for review.

## Links

- [**Terms of Service**](https://github.com/Daniel-191/Paradise/blob/main/TOS.md)
- [**Privacy Policy**](https://github.com/Daniel-191/Paradise/blob/main/PrivacyPolicy.md)

## Notes

- **Cooldown:** 3 seconds.
- Most commands check `accept_TOS` at the start - without an accepted TOS, they refuse to run.
- TOS acceptance is **per user**, stored in the bot's database.
- See also [Terms of Service FAQ](../../faq/tos.md).
