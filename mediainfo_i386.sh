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
_package='mediainfo_i386.zip'
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
ldconfig
cd $INSTALL_SDIR
echo "Removing old source"
rm -vrf mediainfo_i386*
#wget http://downloads.sourceforge.net/zenlib/libzen0-0.4.14-1.i386.CentOS_5.rpm
#wget http://downloads.sourceforge.net/zenlib/libzen0-devel-0.4.14-1.i386.CentOS_5.rpm
#wget http://downloads.sourceforge.net/mediainfo/libmediainfo0-0.7.32-1.i386.CentOS_5.rpm
#wget http://downloads.sourceforge.net/mediainfo/libmediainfo0-devel-0.7.32-1.i386.CentOS_5.rpm
#wget http://downloads.sourceforge.net/mediainfo/mediainfo-0.7.32-1.i386.CentOS_5.rpm
wget $SOURCE_URL/$_package
yum -y install unzip
unzip mediainfo_i386.zip
cd mediainfo_i386
rpm -vi libzen0-0.4.14-1.i386.CentOS_5.rpm
rpm -vi libzen0-devel-0.4.14-1.i386.CentOS_5.rpm
rpm -vi libmediainfo0-0.7.32-1.i386.CentOS_5.rpm
rpm -vi libmediainfo0-devel-0.7.32-1.i386.CentOS_5.rpm
rpm -vi mediainfo-0.7.32-1.i386.CentOS_5.rpm
echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
