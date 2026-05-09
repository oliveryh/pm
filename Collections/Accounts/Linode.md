Syncs::[[dashboards]]
Syncs::[[pm]]

# Actions

# Setting Up a New Instance

[Linode - Getting Started](https://www.linode.com/docs/getting-started/)

1. Create a Virtual Private Server (VPS)
2. SSH into the server
	`ssh root@<ip address>`
3. Run Updates
	`apt-get update && apt-get upgrade`

# Deploying to Linode Using Ansible

[Linode - Running Ansible Playbooks](https://www.linode.com/docs/applications/configuration-management/running-ansible-playbooks/)

Before running the above steps, you'll need to do the following on the provisioning node:

## Disable Host Key Checking

- Uncomment `host_key_checking = False` in `/etc/ansible/ansible.cfg`
- Install sshpass

## Create the Inventory File

1. Add the host to the file `/etc/ansible/hosts` file
2. Change the base python interpreter if you're installing to a newer server (Ubuntu 20 LTS)

```
[webserver]
root@<ip address>

[webserver:vars]
ansible_python_interpreter=/usr/bin/python3
```

## Create Limited User Account

In this stage, remember to copy the generated passwords correctly.

# Audit Process

- Sign in
- Check that personal information is up to date
- Check that any payments associated with the account are as expected
- Other actions (clearing old assets within the platform)

# Reference

| Project    | File Root            |
| ---------- | -------------------- |
| Dashboards | /projects/dashboards |
| PM         | /projects/pm         |

- postgres: a*a*

# Log

## 2026-04-26

- Upgraded OS from 20.04 LTS Ubuntu to 22.04 LTS Ubuntu

## 2025-10-21

- Deleted the following projects and their respective NGINX config / Docker containers
	- `changedetection`
	- `assistant`
	- `zero-vue`
	- `property-alerts`

## March 22, 2025

To ensure the Ghostty terminal behaved as expected when sshing into the Linode server, I had to run the following command from my laptop (https://ghostty.org/docs/help/terminfo)

`infocmp -x | ssh YOUR-SERVER -- tic -x -`

## March 2, 2025

- Deleted `pm2` logs to free up space

## March 1, 2025

- Removed 2020 Macbook Pro Intel work laptop public SSH key from `ansible` `authorized_keys`
- Added 2020 Macbook Pro Intel personal laptop public SSH key from `ansible` `authorized_keys`

## August 4, 2024

- Removed `node_modules` and `venv` in `/project/property-alerts` to save ~500MB of space

## April 14, 2024

- Update address to 17 Elm Park

## January 28, 2024

- Listed the largest files with `find . -type f -printf "%s\t%p\n" | sort -n | tail -n 30`
- Removed Activity Watch json files (will keep DB)
- Remove NVM v16
- Removed some old journal logs using [this guide](https://linuxhandbook.com/clear-systemd-journal-logs/)
- Freed up 3GB

## December 20, 2023

- Enabled backups to run on a weekly basis on Sundays around 12pm as per [Back up Linode server](https://www.notion.so/Back-up-Linode-server-23ab868daf2e4ff3a37e4f3c32b41345?pvs=21)

## December 19, 2023

- Updated address to 37 Wedgnock Green

## August 15, 2023

- Updated payment methods to new Monzo card (expiring 07/26)

## 2020-07-07

- Created Linode
