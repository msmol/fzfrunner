# fzfrunner

This script is inspired by:
- [fzf-pass](https://git.reekynet.com/ReekyMarko/fzf-pass)
- [krunner](https://userbase.kde.org/Plasma/Krunner)
- [krunner-pass](https://github.com/akermu/krunner-pass)

As a former Plasma/krunner (+ krunner-pass) user that has switched to Sway,
I wanted a unified runner that can:

- copy passwords stored in my $PASSWORD_STORE_DIR to my clipboard
- launch applications in /usr/share/applications
- evaluate math: type "1+1" and have it display "2" in the preview
- fallback to simply run the command "as-is" if entry is none of the above

### Usage

Add the following to your Sway config:

```
bindsym $mod+F2 exec $term --name=fzfrunner -e /path/to/fzfrunner
for_window [app_id="^fzfrunner"] floating enable, border pixel 1, opacity 0.8
```

Hit $mod+F2 to bring up the runner

### Contributing

All contributions welcome :-)
