# vault-bbr-boshrelease

[BBR](https://docs.cloudfoundry.org/bbr/) boshrelease for vault.

Uses [safe](https://github.com/starkandwayne/safe) export and [gpg](https://www.gnupg.org/) to generate an encrypted backup of your vault secrets.

## Usage

Collocate this boshrelease with your vault deployment. See available [bosh ops](manifests/operations/bbr.yml)

use BBR to perform backups.

## Jobs

**vault-backup-restore**

