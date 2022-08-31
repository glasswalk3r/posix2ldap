# posix2ldap

![Unit tests](https://github.com/glasswalk3r/posix2ldap/actions/workflows/unit.yaml/badge.svg?branch=main)

Migration of POSIX databases to OpenLDAP.

# Description

This is a CLI to migrate users and groups from a Linux POSIX database to a
OpenLDAP server by creating LDIF files.

It is mostly based on the
[migrationtools](https://gitlab.com/future-ad-laboratory/migrationtools) code,
more specifically the `migrate_common.ph`, `migrate_group.pl` and
`migrate_passwd.pl`. Although the code from there is pretty archaic (even for
Perl long tradition of backwards compatibility), the definitions for OpenLDAP
seems to be pretty solid though.

This CLI **does not** supports Samba or NIS handling, only the regular files to
manage users and groups (`/etc/passwd` and `/etc/group`).

This CLI **does** supports `/etc/gshadow`, which is not included in the
[migrationtools](https://gitlab.com/future-ad-laboratory/migrationtools) already
mentioned files.

## Requirements

The minimal expected schemas to be available in the OpenLDAP server are:

- cosine
- nis
- inetorgperson
- misc

### Development

- see go.mod for minimum Golang version and modules required to compile and run
tests.
- GNU Make.
- [golangci-lint](https://golangci-lint.run/usage/install/) is required to run
validations.

See the `Makefile` for the available targets.

## Install

## References

- [migrationtools project repository](https://gitlab.com/future-ad-laboratory/migrationtools)

