# Firejail profile for gpa
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/gpa.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.gnupg

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
protocol unix,inet,inet6
seccomp
shell none
tracelog

# private-bin gpa,gpg
private-dev
