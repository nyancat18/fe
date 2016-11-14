
whitelist ${HOME}/.Natron
whitelist ${HOME}/.cache/INRIA/Natron/
whitelist ${HOME}/.config/INRIA/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos
whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.themes

noblacklist /usr/OFX/
noblacklist /usr/share/OpenColorIO-Configs/

#private-bin Natron,NatronRenderer,blender,dbus-launch
#private-etc fonts,X11
private-dev
whitelist /tmp/.X11-unix

noexec ${HOME}
noexec /tmp

shell none
noroot
ipc-namespace
net none
seccomp
caps.drop all
