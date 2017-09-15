# Firejail profile for feh
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/feh.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
net none
netfilter
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp
shell none

private-bin feh
private-dev
private-etc feh
