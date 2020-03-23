# Ansible implementation to provision all our servers

Uses ansible playbooks to provision the VC4all server.

## Inventory

## Playbooks

## Roles

## Vault

By default, vault uses bitwarden to be unlocked.
`--vault-password-file=./ansible-vault-pass.sh`  will prompt for the
bitwarden master password and then return the vault password as stored
in bitwarden.

Ensure you are logged in in bitwarden with `bw login` and that the
logged in user has access to `ansible-vault` entry.

This is configured in `ansible.cfg` file.

## Tools

## Quickstart

### Boostrap

Given a clean default server with ubuntu 18.04, an initial user called
"beheerder", run the following:

```bash
ansible-playbook bootstrap.yml --ask-pass -c paramiko --ask-become-pass
```

Ask pass, and ask become pass is needed because on bootstrapping we
don't have all the ssh config set up yet. This is what the boostrapping
does.

-c paramiko is needed because, somehow, the version of ssh as provided
by the default install of Ubuntu on Transip is a tad weird and we run
into this issue: https://github.com/ansible/ansible/issues/14426

### Install

### Run

### Test

### Release

### Deploy
