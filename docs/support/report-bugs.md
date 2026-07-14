# Report Bugs

Found a bug? Use [`/bugreport`](#bugreport) directly inside Discord - it sends to the dev's bug-report channel automatically.

## /bugreport

```
/bugreport bug:"<description>" [attachment]
```

### Required Fields

- **bug** - Description of the bug. Be specific.

### Optional Fields

- **attachment** - Image (screenshot) of the bug. Image attachments only.

### Example

```
/bugreport bug:"/baccarat shows wrong payout when betting on Banker - paid 1.95× but said 2× in result embed"
```

## What to include

A good bug report has:

- **What you did** - exact command + arguments.
- **What you expected.**
- **What actually happened.**
- **Screenshot** if visual.
- **Approximate time** when it happened (helps with logs).

## What happens after

- Your report goes to the dev's bug channel.
- The bot replies "Your bug report has been sent to the developer."
- The dev reviews reports manually.
- If your report is fixed/wontfix/duplicate, the dev may notify you in the support server.

## Cooldown

`/bugreport` has a **60-second cooldown** to prevent spam. Don't submit the same bug twice - even if your first one didn't get an immediate reply, it was received.

## Don't use /bugreport for…

- **Suggestions** - use [`/suggest`](suggestions.md) instead.
- **Personal account issues** (lost balance, missing rewards) - open a support ticket in [Discord](https://discord.gg/vMcbru7qMV).
- **Asking for help with how to play** - use [`/guide`](../features/other/guide.md) or the wiki.

## See also

- [Suggestions](suggestions.md)
- [Ask for Help](ask-for-help.md)
- [Github](https://github.com/Daniel-191/Paradise) - for tracked issues.
