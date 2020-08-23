# fzfrunner

This script is inspired by:
- [fzf-pass](https://git.reekynet.com/ReekyMarko/fzf-pass)
- [krunner](https://userbase.kde.org/Plasma/Krunner)
- [krunner-pass](https://github.com/akermu/krunner-pass)

As a former Plasma/krunner (+ krunner-pass) user that has switched to Sway,
I wanted a unified runner that can:

- copy passwords stored in `$PASSWORD_STORE_DIR` to the clipboard
- launch applications in /usr/share/applications
- evaluate math: type `1+1` and have it display `2` in the preview
- fallback to simply run the command "as-is" if entry is none of the above

### Usage

Add the following to your Sway config:

```
bindsym $mod+F2 exec $term --name=fzfrunner -e /path/to/fzfrunner
for_window [app_id="^fzfrunner"] floating enable, border pixel 1, opacity 0.8
```

Hit $mod+F2 to bring up the runner.

Some runners define alternate actions ((e.g. `pass`, copy username instead of password to clipboard).
To use alternate action, hit `alt-enter` on the entry instead of `enter`.

### Config

You can define a config file at `$HOME/.config/fzfrunner/config`

Right now the only thing you can configure it which runners are active. Set `1` to enable, `0` to disable.

Example:
```
[runners]
applications=1
pass=0
shell=1
```

If no config file exists, all runners in the `runners/` directory will be active.

#### Runners

Runners must be in a `runners/` directory. This directory should be `$HOME/.config/fzfrunners/runners`
If this directory does not exist, the script will fall back to `runners/` defined in the same directory as the `fzfrunner` script itself,
as in this repostiry.

### TODO
- More runners
- Configurable alt-action keyboard shortcut


### Contributing

All contributions welcome :-)
