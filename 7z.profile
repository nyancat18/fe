# Firejail profile for 7z
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/7z.local
# Persistent global definitions
include /etc/firejail/globals.local


ignore noroot
net none
nosound
shell none
tracelog

private-dev

include /etc/firejail/default.profile
