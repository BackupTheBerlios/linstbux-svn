#Makefile by pisi 13 IV 2005

FILE=linux-2.6.10.tar.bz2
URL=http://www.kernel.org/pub/linux/kernel/v2.6/$(FILE)

.PHONY: unpack

all: unpack
	

$(FILE):
	wget -O $(FILE) $(URL)

unpack: $(FILE)
	tar xjf $(FILE)

#TODO: check for already unpacked linux
#TODO: target for calling make menuconfig & compile

clean:
#delete source archive
	rm -f $(FILE)
#delete all subdirs
	rm -r -f $(shell find . -maxdepth 1 -mindepth 1 -type d ! -printf %P\ )
