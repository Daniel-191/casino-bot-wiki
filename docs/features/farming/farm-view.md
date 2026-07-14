# /farm-view

Admin-only command for viewing detailed information about another user's farm.

!!! warning "Admin-only command"
    `/farm-view` is restricted to the Paradise Bot admin server. Regular users cannot run it.

## Description

Diagnostic command used by bot administrators to inspect a specific user's farm - slot contents, crop timers, fertilizers, and any anomalies. Mostly used for support tickets and debugging stuck crops.

If you're not an admin, this command won't appear or will refuse to run.

## Usage

`/farm-view [user]`

## Required Fields (admin only)

- **user** - Discord member whose farm to inspect.

## What admins see

- Every slot's current crop, quantity, fertilizer, and `planted_at` timestamp.
- Calculated grow-time vs. real elapsed time (for spotting stuck crops).
- Any Patreon adjustments currently applied.
- DB shard the user's farm lives on (farms are sharded across 10 SQLite DBs for performance).

## For regular users

If you want to see your **own** farm, use [`/farming`](farming.md) - that's the public entry point.

## Notes

- **Admin server only.** Slash command is registered with `guild_ids=[ADMIN_SERVER_ID]`.
- For ad-hoc support, ping admins instead of running this directly.
- Related admin commands: `/farm-debug`, `/farm-fix-stuck-times`, `/farm-cleanup`, `/farm-reset`.
