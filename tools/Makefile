# Part 0
# load common stuff
TOPDIR = ..
include $(TOPDIR)/Makefile.common

TARGET = fbxkb
SCRIPT = options.sh

all:

install: 
	install -pD -m 755 $(SCRIPT) $(DESTDIR)$(LIBEXECDIR)/$(TARGET)/$(SCRIPT)

uninstall:
	rm -f $(DESTDIR)$(LIBEXECDIR)/$(TARGET)/$(SCRIPT)

