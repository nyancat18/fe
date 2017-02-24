# Firejail profile for Mozilla Firefox (Iceweasel in Debian)

noblacklist ~/.dooble
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc

caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog

whitelist ${DOWNLOADS}
mkdir ~/.dooble
whitelist ~/.dooble
mkdir ~/usr/lib/dooble-qt4
whitelist ~/usr/lib/dooble-qt4
whitelist ~/usr/lib/dooble

# lastpass, keepassx
whitelist ~/.keepassx
whitelist ~/.config/keepassx
whitelist ~/keepassx.kdbx
whitelist ~/.lastpass
whitelist ~/.config/lastpass
