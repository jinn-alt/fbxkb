# Part 0
# load common stuff
TOPDIR = ..
include $(TOPDIR)/Makefile.common

# backslashify slashes to avoid problems with sed
BPREFIX := $(subst /,\/,$(PREFIX))

TARGET = fbxkb.desktop

all:

clean:
	$(RM) $(TARGET) *~


install: all
	install -pD -m 644 $(TARGET) $(DESTDIR)$(PREFIX)/share/applications/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/applications/$(TARGET)
