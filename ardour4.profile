noblacklist ~/.config/ardour4

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

whitelist ~/Music
whitelist ~/Música

mkdir ~/.config/ardour4
whitelist ~/.config/ardour4

caps.drop all
netfilter
nonewprivs
nogroups
noroot
protocol unix
seccomp
shell none
tracelog

#private-bin ardour4
private-dev
private-tmp
#private-etc ardour4