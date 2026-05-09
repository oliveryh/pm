---
status: Active
base: "[[Projects.base]]"
start_date: 2026-05-01
end_date: 
---

# Task Breakdown

- [x] Buy Hetzner storage box
- [ ] Transfer SSD files to laptop
- [ ] Backup iCloud to storage box
- [ ] Backup SSD to storage box
- [ ] Confirm Backblaze files are backed up
- [ ] Format Samsung SSD to be writable on macOS
- [ ] Sort files on Mac and backup again
- [ ] Remove Backblaze subscription

# Log

## 2026-05-09

- Bought 1TB Heztner Storage Box
- Transfered iCloud files using the following command

```
rsync -avzL --progress -e "ssh -p 23 -i ~/.ssh/hetzner_storagebox" ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Documents/videos u591200@u591200.your-storagebox.de:/home/icloud-backup/Documents/videos
```


## 2026-05-01

- Project created
