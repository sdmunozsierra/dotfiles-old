# Change fonts in Arch Linux

## Commands
'fc-list' shows all installed fonts (More than you think) use it with grep
`fc-cache` to update fonts

* Create a function:
'for family in serif sans-serif monospace Arial Helvetica Verdana "Times New Roman" "Courier New"; do'
'echo -n "$family: ";'
'fc-match "$family"; done'
You can see what fonts are actually in the family system

## Installation
Use pacman or pacaur
If downloaded place them on /usr/share/fonts

## Configuration
Edit or create ~/.config/fontconfig/fonts.conf
backup and use as template
