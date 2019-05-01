[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3
# exec xbindkeys
## ./.config/autostart/dmenu_recent_aliases.sh
#
