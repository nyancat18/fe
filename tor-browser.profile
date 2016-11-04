blacklist /usr/local/bin
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.tor-browser/
whitelist /opt/tor-browser/


private-bin bash,grep,sed,tor-browser,python,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,getconf,file,expr
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
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
private-tmp

noexec /tmp

shell none
seccomp
noroot
caps.drop all