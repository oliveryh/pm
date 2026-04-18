# Obsidian + Claude Code VPS Setup

**Prerequisites:** Claude Pro/Max, Obsidian Sync, VPS (~$5-10/mo), Node.js 22+

## Installation

```bash
# 1. Install tools
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash - && sudo apt install -y nodejs
npm install -g @anthropic-ai/claude-code obsidian-headless

# 2. Authenticate
claude login && ob login

# 3. Set up vault
mkdir -p ~/vault && cd ~/vault
ob sync-setup --vault "Your Vault Name" && ob sync
```

**4. systemd service** — create `/etc/systemd/system/obsidian-sync.service`:

```ini
[Unit]
Description=Obsidian Headless Sync
After=network.target

[Service]
ExecStart=/home/ansible/.nvm/versions/node/v22.14.0/bin/node /home/ansible/.nvm/versions/node/v22.14.0/lib/node_modules/obsidian headless/cli.js sync --continuous
WorkingDirectory=/projects/pm
Restart=always
User=ansible

[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable obsidian-sync && sudo systemctl start obsidian-sync
```

```bash
# 5. tmux session (Ctrl+B D to detach, tmux attach -t vault to reattach)
sudo apt install tmux && tmux new -s vault
cd ~/vault && claude --remote-control  # scan QR in Claude mobile app
```

To make Remote Control permanent: `/config` → "Enable Remote Control for all sessions" → true

## Considerations

- Could use Telegram or WhatsApp to send messages to Claude as an alternative interface for capturing notes on mobile

## Usage Flow

1. Open Claude mobile app → Remote Control session
2. Claude writes `.md` files to `~/vault/` → `ob sync` pushes to Obsidian Sync → phone/desktop updates within seconds

# Log

## 2026-04-16

- Successfully connected and communicated with Claude Code via phone.

## Architecture Summary

```
Claude mobile app (Remote Control)
        ↓ ↑
   VPS running Claude Code
        ↓
   ~/vault/ (markdown files)
        ↓
   ob sync --continuous
        ↓
   Obsidian Sync
        ↓
   Your phone/desktop Obsidian
```
