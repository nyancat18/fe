# Firejail profile for karbon
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/karbon.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.kde4
whitelist ${HOME}/.themes
whitelist ${HOME}/Images
whitelist /tmp/.X11-unix
whitelist /tmp/dbus_session_socket
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
seccomp
shell none

# private-bin krita,dbus-launch
private-dev
# private-etc fonts,passwd,alternatives,X11

noexec /home
noexec /tmp

# CLOBBERED COMMENTS
# I have forced DBus to use an ordinary unix socket
