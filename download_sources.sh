#!/bin/sh
#Download-Script for linSTBux by stephanw

echo "Downloading sources..."

cd src

{
cat << END
http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.10.tar.bz2
ftp://ftp.uk.linux.org/pub/people/dwmw2/mtd/cvs/mtd-snapshot-20050120.tar.bz2
http://ftp.gnu.org/gnu/glibc/glibc-2.3.3.tar.gz
http://www.busybox.net/downloads/snapshots/busybox-snapshot.tar.bz2
http://www.bluez.org/redirect.php?url=http%3A%2F%2Fbluez.sf.net%2Fdownload%2Fbluez-libs-2.14.tar.gz
http://www.bluez.org/redirect.php?url=http%3A%2F%2Fbluez.sf.net%2Fdownload%2Fbluez-utils-2.14.tar.gz
END
} | while read url
do
  wget $url
done

echo "Downloading Sources finished"

echo "Now extracting files..."

{
cat << END
linux-2.6.10.tar.bz2
mtd-snapshot-20050120.tar.bz2
busybox-snapshot.tar.bz2
END
} | while read bz2
do
   tar xjf $bz2
done


{
cat << END
glibc-2.3.3.tar.gz
bluez-libs-2.14.tar.gz
bluez-utils-2.14.tar.gz
END
} | while read gz
do
   tar xzf $gz
done

echo "Finished"
