# Firejail profile for ghostwriter
# Description: Cross-platform, aesthetic, distraction-free Markdown editor.
# This file is overwritten after every install/update
# Persistent local customizations
include ghostwriter.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/ghostwriter
noblacklist ${DOCUMENTS}
noblacklist ${PICTURES}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

apparmor
caps.drop all
machine-id
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
#seccomp -- breaks
shell none
#tracelog -- breaks

# Breaks Translation
#private-bin ghostwriter,pandoc
private-cache
private-dev
# passwd,login.defs,firejail are a temporary workaround for #2877 and can be removed once it is fixed
private-etc alternatives,ca-certificates,crypto-policies,dbus-1,dconf,firejail,fonts,gconf,groups,gtk-2.0,gtk-3.0,host.conf,hostname,hosts,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,locale,locale.alias,locale.conf,localtime,login.defs,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,resolv.conf,rpc,services,ssl,Trolltech.conf,X11,xdg
private-tmp
