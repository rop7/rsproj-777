# Aliases `debian`

Shorted aliases for most used Debian specific commands.
To activate it, add `debian` to `aliases=(...)` in your `.bashrc` file:

```bash
aliases=(... debian)`
```

## Basic Commands

| Alias  | Command                               |
| ------ | ------------------------------------- |
| `apup` | `sudo apt-get update`                     |
| `apug` | `sudo apt-get upgrade`                    |
| `apuu` | `sudo apt-get update && sudo apt-get upgrade` |
| `apfu` | `sudo apt-get full-upgrade`               |
| `apin` | `sudo apt-get install`                    |
| `apri` | `sudo apt-get install --reinstall `       |
| `aprm` | `sudo apt-get remove`                     |
| `apur` | `sudo apt-get purge`                      |
| `apse` | `apt-get search`                          |
| `apdl` | `apt-get download`                    |

## APT Maintainance & Diagnostic Commands

| Alias   | Command                                                |
| ------- | ------------------------------------------------------ |
| `apar`  | `sudo apt-get autoremove`                                  |
| `apcl`  | `sudo apt-get autoclean`                               |
| `apesr` | `sudo apt-get edit-sources`                                |
| `apsh`  | `apt-get show`                                             |
| `aphst` | <code>cat /var/log/apt-get/history.log &#124; less </code> |
| `drcf`  | `sudo dpkg-reconfigure`                                |

## APT Source & Building Commands

| Alias  | Command              |
| ------ | -------------------- |
| `apsc` | `apt-get source`     |
| `apbd` | `sudo apt-get build-deb` |

## Debian's update-\* commands

| Alias   | Command                    |
| ------- | -------------------------- |
| `upgrb` | `sudo update-grub`         |
| `uirfs` | `sudo update-initramfs -u` |
