#!/bin/bash
#FFMPEG installation script

#  Copyright (C) 2007-2014 Sherin.co.in. All rights reserved.
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
_url=`cat ./url.txt`
SOURCE_URL=$_url
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='Git'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
if [ -e "/etc/yum.conf" ];then
	yum -y install git
fi
if [ -e "/usr/bin/git" ]; then
	mkdir -pv /usr/local/cpffmpeg/bin/
	ln -sf /usr/bin/git  /usr/local/cpffmpeg/bin/git
else
	cd $INSTALL_SDIR/
	rm -rf git*
	wget $SOURCE_URL/git-1.7.2.5.tar.gz
	tar -xzf git-1.7.2.5.tar.gz
	cd git-1.7.2.5/
	./configure --prefix=/usr/
	make -j$cpu
	make install
fi

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
