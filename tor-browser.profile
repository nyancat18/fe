# Firejail profile for tor-browser
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/tor-browser.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.tor-browser/
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
whitelist /opt/tor-browser/
include /etc/firejail/whitelist-common.inc

caps.drop all
noroot
seccomp
shell none

private-bin bash,grep,sed,tor-browser,python,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,getconf,file,expr
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
private-tmp

noexec /tmp
