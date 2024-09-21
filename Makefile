# Part 0
# load common stuff
TOPDIR = .
include $(TOPDIR)/Makefile.common

# Part 1
# recursive make
.PHONY: subdirs
all clean distclean install uninstall: subdirs

SUBDIRS = src tools images
.PHONY: $(SUBDIRS)
subdirs: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)



