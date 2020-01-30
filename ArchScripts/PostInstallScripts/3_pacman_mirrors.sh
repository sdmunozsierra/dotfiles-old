#!/bin/bash
# run as sudo
if [ `whoami` != root ]; then
    echo Please run as sudo
    exit
fi

# Updates mirrorlist of pacman using refactor
## Download reflector and configure
echo "Updating pacman mirrorlist"
sudo pacman -Sy --noconfirm reflector
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

## Add hook to pacman
mkdir -p /etc/pacman.d/hooks/
cat > /etc/pacman.d/hooks/mirrorupgrade.hook <<EOM
[Trigger]
Operation = Upgrade
Type = Package
Target = pacman-mirrorlist

[Action]
Description = Updating pacman-mirrorlist with reflector and removing pacnew...
When = PostTransaction[Unit]
Description=Pacman mirrorlist update
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/bin/reflector --protocol https --latest 30 --number 20 --sort rate --save /etc/pacman.d/mirrorlist

[Install]
RequiredBy=multi-user.target
Depends = reflector
Exec = /bin/sh -c "reflector --country 'United States' --latest 200 --age 24 --sort rate --save /etc/pacman.d/mirrorlist; rm -f /etc/pacman.d/mirrorlist.pacnew
EOM

## Create service for systemd
cat > /etc/systemd/system/reflector.service <<EOM
[Unit]
Description=Pacman mirrorlist update
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/bin/reflector --protocol https --latest 30 --number 20 --sort rate --save /etc/pacman.d/mirrorlist

[Install]
RequiredBy=multi-user.target
EOM

## Create timer to update daily
cat > /etc/systemd/system/reflector.timer <<EOM
[Unit]
Description=Run reflector daily

[Timer]
OnCalendar=Mon *-*-* 7:00:00
RandomizedDelaySec=15h
Persistent=true

[Install]
WantedBy=timers.target
EOM

## Start and Enable services service
systemctl start reflector.service
systemctl start reflector.timer
systemctl enable reflector.service
systemctl enable reflector.timer

## Enable color in pacman
sed -i "/^#Color/c\Color" /etc/pacman.conf
