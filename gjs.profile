# Firejail profile for gjs
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/gjs.local
# Persistent global definitions
include /etc/firejail/globals.local

# when gjs apps are started via gnome-shell, firejail is not applied because systemd will start them

noblacklist ~/.cache/libgweather
noblacklist ~/.cache/org.gnome.Books
noblacklist ~/.config/libreoffice
noblacklist ~/.local/share/gnome-photos

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog

# private-bin gjs,gnome-books,gnome-documents,gnome-photos,gnome-maps,gnome-weather
private-dev
# private-etc fonts
private-tmp
