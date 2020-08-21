# fzfrunner

This script is inspired by:
- [fzf-pass](https://git.reekynet.com/ReekyMarko/fzf-pass)
- [krunner](https://userbase.kde.org/Plasma/Krunner)
- [krunner-pass](https://github.com/akermu/krunner-pass)

As a former Plasma/krunner (+ krunner-pass) user that has switched to Sway,
I wanted a unified runner that can launch:

- passwords stored in my $PASSWORD_STORE_DIR
- applications in /usr/share/applications
- fallback to simply run the command "as-is" if entry is neither of the above

### Usage

Add the following to your Sway config:

```
bindsym $mod+F2 exec $term --name=fzfrunner -e /path/to/fzfrunner
for_window [app_id="^fzfrunner"] floating enable, border pixel 1, opacity 0.8
```

Hit $mod+F2 to bring up the runner

### Contributing

All contributions welcome :-)
