# Language

Paradise Bot supports multiple languages. You can set a language for yourself or, if you're an admin, for your whole server.

## Available Languages

| Language | Code |
|---|---|
| English *(default)* | `en` |
| Español | `es-ES` |
| Français | `fr` |
| Nederlands | `nl` |
| Deutsch | `de` |
| Português (Brasil) | `pt-BR` |

## Commands

| Command | Who can use | What it does |
|---|---|---|
| `/language user <language>` | Anyone | Set your personal language |
| `/language server <language>` | Admins only | Set the server-wide language |
| `/language reset user` | Anyone | Clear your personal setting |
| `/language reset server` | Admins only | Clear the server setting |
| `/language current` | Anyone | Show your current language settings |

## Priority

Your personal language always wins. If you haven't set one, the server's language is used. If neither is set, the bot defaults to **English**.

```
Personal setting → Server setting → English (default)
```

## Notes

- Personal settings are account-wide — they follow you across all servers.
- Server settings apply to all users in that server who haven't set a personal preference.
- Multiplayer game embeds (shared with all players) use the server language.
