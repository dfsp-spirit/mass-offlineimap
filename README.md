# mass-offlineimap
Script to move manyIMAP mail accounts from an old to a new server over IMAP using offlineimap. Also has support for local backups.


## Motivation

The `offlineimap` tool is great to sync your mailbox, but if you have to move many mailboxes from one server to another (or create local backups of many mailboxes on one server), writing the config files for it gets tedious. This small and simple scripts generates them for you. Using this script only makes sense if you have many mailboxes on the same server. If not, you can simply use `offlineimap` directly.

## Dependencies

This is a `Bash` shellscript that uses the `offlineimap` tool to get the job done. Offlineimap should come with your Linux distribution.

## Usage

WARNING: Emails, especially those of others, are better kept safe. Be sure you know what you are doing before running this. You may lose data! This tool comes without any warranties, see the license.

Run `./mass-offlineimap -h` for help.

Basically edit the config files `oldserver` and `newserver`. Then copy the example file `account_mapping.example` to `account_mapping` and fill out user mappings. See the examples in the files, it's easy.

Then run `./mass-offlineimap -l` to generate the config for a local mass backup, or `./mass-offlineimap -r` to generate the config for a sync between two remote servers.

Then run `offlineimap -c <configfile>` to start the sync/backup for a single account. When you run mass-offlineimap, it suggests commands you can use to backup/sync all accounts at once.

## Issues

If you get any python stack traces, these are from offlineimap. Just search the web for the error message.

If you have a problem with this script, let me know at GitHub.

## License

MIT, see https://opensource.org/licenses/MIT
