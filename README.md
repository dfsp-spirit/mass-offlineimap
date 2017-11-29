# mass-offlineimap
Script to move manyIMAP mail accounts from an old to a new server over IMAP using offlineimap. Also has support for local backups.


## Motivation

The `offlineimap` tool is great to sync your mailbox, but if you have to move many mailboxes from one server to another (or create local backups of many mailboxes on one server), writing the config files for it gets tedious. This small and simple scripts generates them for you.

## Dependencies

This is a `Bash` shellscript that uses the `offlineimap` tool to get the job done. Offlineimap should come with your Linux distribution.

## Usage

Run `./mass-offlineimap -h` for help.


## License

MIT, see https://opensource.org/licenses/MIT
