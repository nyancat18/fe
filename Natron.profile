# Firejail profile for Natron
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/Natron.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist /usr/OFX/
noblacklist /usr/share/OpenColorIO-Configs/

whitelist ${DOWNLOADS}
whitelist ${HOME}/.Natron
whitelist ${HOME}/.cache/INRIA/Natron/
whitelist ${HOME}/.config/INRIA/
whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.themes
whitelist ${HOME}/Videos
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
noroot
seccomp
shell none

# private-bin Natron,NatronRenderer,blender,dbus-launch
private-dev
# private-etc fonts,X11

noexec ${HOME}
noexec /tmp
