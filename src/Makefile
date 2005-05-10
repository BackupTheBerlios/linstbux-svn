#Makefile by pisi 13 IV 2005

#all subdirs
SUBDIRS = $(shell find . -maxdepth 1 -type d ! -name .svn -printf %P\ )

all:
	$(foreach d,$(SUBDIRS),PWD=$(PWD)/$$d $(MAKE) -C $d all;)


clean:
	$(foreach d,$(SUBDIRS),PWD=$(PWD)/$$d $(MAKE) -C $d clean;)
