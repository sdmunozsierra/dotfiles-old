# /* Temporarly disable xresources */
# /*[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources*/

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec i3
# exec xbindkeys
# ./.config/autostart/dmenu_recent_aliases.sh
