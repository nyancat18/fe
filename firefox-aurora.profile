# Firejail profile for firefox-aurora
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/firefox-aurora.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.cache/mozilla
noblacklist ~/.mozilla

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ~/.cache/mozilla/firefox
mkdir ~/.mozilla
whitelist ${DOWNLOADS}
whitelist /opt/firefox-aurora/
whitelist ~/.cache/gnome-mplayer/plugin
whitelist ~/.cache/mozilla/firefox
whitelist ~/.config/gnome-mplayer
whitelist ~/.config/keepassx
whitelist ~/.config/lastpass
whitelist ~/.config/pipelight-silverlight5.1
whitelist ~/.config/pipelight-widevine
whitelist ~/.keepassx
whitelist ~/.keysnail.js
whitelist ~/.lastpass
whitelist ~/.mozilla
whitelist ~/.pentadactyl
whitelist ~/.pentadactylrc
whitelist ~/.pki
whitelist ~/.vimperator
whitelist ~/.vimperatorrc
whitelist ~/.wine-pipelight
whitelist ~/.wine-pipelight64
whitelist ~/.zotero
whitelist ~/dwhelper
whitelist ~/keepassx.kdbx
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog

# private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,gtk-2.0,pango,fonts,iceweasel,firefox,adobe,mime.types,mailcap,asound.conf,pulse

# CLOBBERED COMMENTS
# lastpass, keepassx
