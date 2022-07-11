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
_package='mediainfo_64.zip'
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
ldconfig
cd $INSTALL_SDIR
echo "Removing old source"
rm -vrf mediainfo_64*
#wget http://downloads.sourceforge.net/zenlib/libzen0-0.4.29-1.x86_64.CentOS_6.rpm
#wget http://sourceforge.net/projects/mediainfo/files/binary/libmediainfo0/0.7.64/libmediainfo0-0.7.64-1.x86_64.CentOS_6.rpm
http://sourceforge.net/projects/mediainfo/files/binary/mediainfo/0.7.64/mediainfo-0.7.64-1.x86_64.CentOS_6.rpm
wget $SOURCE_URL/$_package
yum -y install unzip
unzip mediainfo_64.zip
cd mediainfo_64
rpm -ivh libzen0-0.4.29-1.x86_64.CentOS_6.rpm
rpm -ivh libmediainfo0-0.7.64-1.x86_64.CentOS_6.rpm
rpm -ivh mediainfo-0.7.64-1.x86_64.CentOS_6.rpm
echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
