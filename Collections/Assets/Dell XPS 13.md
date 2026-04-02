---
base: "[[Assets.base]]"
Period Owned: 2015-01-01 to 2023-03-26
Status: Archived
Notes: ""
---

# Log

##  2022-12-30

Installed 22.04 LTS Pop OS on Dell XPS 13. This was largely due to not using the Windows partition and regularly getting issues with memory limitations that could have been due to having Ubuntu dual booted.

In order to install the required software, I largely used the  https://github.com/oliveryh/battlestation  repository. However there are some exceptions / general notes:

- [SaltStack minion](https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/ubuntu.html) can be installed here
- Install gnome tweaks with `sudo apt install gnome-tweaks` and select the font. This will give you both the powerline patched font and the nerd font needed
- For terminals, I prefer to use [Blex Mono Sans Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/IBMPlexMono/Mono/complete/Blex%20Mono%20Nerd%20Font%20Complete.ttf) which has both the powerline and Nerd Font patches required
    - Note this will require Gnome Tweaks
- Install [Segoe UI Font](https://github.com/mrbvrz/segoe-ui-linux) - This makes GitHub look better on Linux systems
- Changed hostname to `dell-xps-13` using [these instructions](https://www.cyberciti.biz/faq/ubuntu-change-hostname-command/)
- Install NVM to manage multiple node versions on Linux
    - Add the [NVM ZSH plugin](https://github.com/lukechilds/zsh-nvm#manually) to custom/plugins and add the plugin to `~/.zshrc`
