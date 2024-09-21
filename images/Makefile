# Part 0
# load common stuff
TOPDIR = ..
include $(TOPDIR)/Makefile.common

# backslashify slashes to avoid problems with sed
BPREFIX := $(subst /,\/,$(PREFIX))

CFG := $(wildcard *.cfg)
RES := $(CFG:%.cfg=%)

all: $(RES)

%: %.cfg
	sed 's/PREFIX/$(BPREFIX)/g' < $< > $@

clean:
	$(RM) $(RES) *~

install: 
	install -d  $(DESTDIR)$(PREFIX)/share/fbxkb
#	install -m 644 $(RES) $(DESTDIR)$(PREFIX)/share/fbxkb
	install -d  $(DESTDIR)$(PREFIX)/share/fbxkb/images
	install -m 644 *.png $(DESTDIR)$(PREFIX)/share/fbxkb/images/

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/share/fbxkb
