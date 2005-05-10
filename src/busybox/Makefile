#Makefile by pisi 13 IV 2005

FILE=busybox-snapshot.tar.bz2
URL=http://www.busybox.net/downloads/snapshots/$(FILE)

.PHONY: unpack

all: unpack
	

$(FILE):
	wget -O $(FILE) $(URL)

unpack: $(FILE)
	tar xjf $(FILE)

#TODO: check for already unpacked busybox
#TODO: target for calling configure & compile

clean:
#delete source archive
	rm -f $(FILE)
#delete all subdirs
	rm -r -f $(shell find . -maxdepth 1 -mindepth 1 -type d ! -printf %P\ )
