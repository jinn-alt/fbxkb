# Part 0
# load common stuff
TOPDIR = ..
include $(TOPDIR)/Makefile.common

# backslashify slashes to avoid problems with sed
BPREFIX := $(subst /,\/,$(PREFIX))

MICONSDIR = $(PREFIX)/share/icons/hicolor/16x16/apps
NICONSDIR = $(PREFIX)/share/icons/hicolor/32x32/apps
LICONSDIR = $(PREFIX)/share/icons/hicolor/48x48/apps
MICON = fbxkb16.png
NICON = fbxkb32.png
LICON = fbxkb48.png
TARGET = fbxkb.png

all:


clean:
	$(RM) $(TARGET) *~


install: all
	install -pD -m644  $(MICON) $(DESTDIR)$(MICONSDIR)/$(TARGET)
	install -pD -m644  $(NICON) $(DESTDIR)$(NICONSDIR)/$(TARGET)
	install -pD -m644  $(LICON) $(DESTDIR)$(LICONSDIR)/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(DESTDIR)$(MICONSDIR)/$(TARGET)
	rm -f $(DESTDIR)$(DESTDIR)$(NICONSDIR)/$(TARGET)
	rm -f $(DESTDIR)$(DESTDIR)$(LICONSDIR)/$(TARGET)
