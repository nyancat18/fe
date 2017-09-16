# Firejail profile for keepassx
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/keepassx.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/keepassx
noblacklist ${HOME}/.keepassx
noblacklist ${HOME}/keepassx.kdbx

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp
shell none

private-dev
private-tmp
