#!/usr/bin/env bash
# Short aliases for most used debian specific commands.

alias apup='sudo apt-get update'
alias apug='sudo apt-get upgrade'
alias apuu='sudo apt-get update && sudo apt-get upgrade'
alias apfu='sudo apt-get full-upgrade'

alias apin='sudo apt-get install'
alias apri='sudo apt-get install --reinstall'

alias aprm='sudo apt-get remove'
alias apur='sudo apt-get purge'
alias apar='sudo apt-get autoremove'
alias apcl='sudo apt-get autoclean'

alias apse='apt-get search'
alias apsh='apt-get show'
alias apsc='apt-get source'
alias apesr='sudo apt-get edit-sources'
alias apdl='apt-get download'

alias apbd='sudo apt-get build-deb'
alias aphst='cat /var/log/apt-get/history.log | less'

alias drcf='sudo dpkg-reconfigure'

alias upgrb='sudo update-grub'
alias uirfs='sudo update-initramfs -u'
