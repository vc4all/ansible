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

#### Set notice message

`announce.yml` is a playbook to push a notice message for e.g. maintainance
downtime to users.

When a variable `notice_message` is set, it sets that, when not set, it
removes the `notice_message`.

e.g. to set a notice message on one server:
`ansible-playbook --ask-become-pass -l quiet-gibson.webschuur.com --extra-vars="notice_message='The service will be down for maintainance at 11:00 GMT'" announce.yml`

And to remove:
`ansible-playbook --ask-become-pass -l quiet-gibson.webschuur.com announce.yml`

Note that running the normal `jitsi.yml` will also remove any notice
messages, unless they are explicitly defined in the configuration
settings.

### Test

### Release

### Deploy
