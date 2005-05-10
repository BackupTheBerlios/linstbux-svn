#Makefile by pisi 13 IV 2005

FILE=uClibc-snapshot.tar.bz2
URL=http://www.uclibc.org/downloads/snapshots/$(FILE)

.PHONY: unpack

all: unpack
	

$(FILE):
	wget -O $(FILE) $(URL)

unpack: $(FILE)
	tar xjf $(FILE)

#TODO: check for already unpacked archive
#TODO: target for calling configure & compile

clean:
#delete source archive
	rm -f $(FILE)
#delete all subdirs
	rm -r -f $(shell find . -maxdepth 1 -mindepth 1 -type d ! -printf %P\ )
