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

### Install

### Run

### Test

### Release

### Deploy
