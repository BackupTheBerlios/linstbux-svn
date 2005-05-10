#Makefile by pisi 13 IV 2005

FILE=mtd-snapshot-20050412.tar.bz2
URL=ftp://ftp.uk.linux.org/pub/people/dwmw2/mtd/cvs/$(FILE)

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
