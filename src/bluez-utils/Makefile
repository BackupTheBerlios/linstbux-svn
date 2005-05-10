#Makefile by pisi 13 IV 2005

FILE=bluez-utils-2.14.tar.gz
URL=http://www.bluez.org/redirect.php?url=http%3A%2F%2Fbluez.sf.net%2Fdownload%2F$(FILE)

.PHONY: unpack

all: unpack
	

$(FILE):
	wget -O $(FILE) $(URL)

unpack: $(FILE)
	tar xzf $(FILE)

#TODO: check for already unpacked archive
#TODO: target for calling configure & compile

clean:
#delete source archive
	rm -f $(FILE)
#delete all subdirs
	rm -r -f $(shell find . -maxdepth 1 -mindepth 1 -type d ! -printf %P\ )
