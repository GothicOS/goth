# goth
- This is the official repo which provides packages for Gothic OS.
- Packages for Gothic OS will be placed here.

# Configure Gothic OS's server for pacman
- Add the following to your `pacman.conf` file.
### `/etc/pacman.conf`
```bash
[goth]
SigLevel = Optional DatabaseOptional
Server = https://github.com/GothicOS/$repo/raw/master/$arch
Server = https://raw.githubusercontent.com/GothicOS/$repo/master/$arch
```

