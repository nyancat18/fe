whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.kde4
whitelist ${HOME}/.themes

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/Images

#private-bin krita,dbus-launch
private-dev
#private-etc fonts,passwd,alternatives,X11

whitelist /tmp/.X11-unix
# I have forced DBus to use an ordinary unix socket
whitelist /tmp/dbus_session_socket

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace