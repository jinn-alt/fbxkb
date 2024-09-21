# Part 0
# load common stuff
TOPDIR = ..
include $(TOPDIR)/Makefile.common



SRC = fbxkb.c
OBJ = $(SRC:%.c=%.o)
DEP = $(SRC:%.c=%.dep)

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),distclean)
ifneq ($(MAKECMDGOALS),tar)
-include $(DEP)
endif
endif
endif

TARGET = fbxkb
$(TARGET): $(OBJ) 
	$(CC) $(LDFLAGS) $(OBJ) -Wl,--as-needed $(LIBS) -o $@

all: $(TARGET)


clean:
	$(RM) $(TARGET) $(OBJ) $(DEP) *~

distclean: 
	rm -f Makefile.config config.h

install: 
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 $(TARGET) $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(TARGET)

.PHONY: tar


CWD=$(shell pwd)
VER=$(shell grep -e "\#define[[:space:]]\+VERSION[[:space:]]\+" version.h | \
		sed -e 's/^[^\"]\+\"//' -e 's/\".*$$//' )


tar: 
	$(MAKE) distclean
	cd ..; \
	if [ -e fbxkb-$(VER) ]; then \
		echo fbxkb-$(VER) already exist; \
		echo "won't override";\
		exit 1;\
	else\
		ln -s $(CWD) fbxkb-$(VER);\
		tar --exclude=.svn -hzcvf fbxkb-$(VER).tgz fbxkb-$(VER);\
		rm -f fbxkb-$(VER);\
	fi;

