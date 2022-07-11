﻿#!/bin/bash
#FFMPEG安装脚本

#  版权所有（C）2007-2016 Sherin.co.in。 版权所有,有如何问题请联系：jie5343@126.com。
#
#  此程序是免费软件; 您可以重新分发它和/或修改
#  根据发布的GNU通用公共许可证的条款
#  自由软件基金会; 版本2的许可证，或
#  （可选）任何更新的版本。
#
#  这个程序是分发的，希望它会有用，
#  但没有任何保证; 甚至没有隐含的保证
#  适销性或特定用途的适用性。 看到
#  GNU通用公共许可证了解更多详情。
#
#  您应该已经收到GNU通用公共许可证的副本
#  以及这个程序; 如果没有，写入自由软件
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
_url=`cat ./url.txt`
SOURCE_URL=$_url/x264
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='x264'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
ldconfig
cd $INSTALL_SDIR
echo "Removing old source"
   rm -vrf $INSTALL_SDIR/x264-snapshot*
	#git clone https://code.videolan.org/videolan/x264.git
	#cd x264/
	mv /root/ffmpeginstaller/source/last_stable_x264.tar.bz2 $INSTALL_SDIR
	tar -xvjf last_stable_x264.tar.bz2
	cd x264-snapshot-20180402-2245-stable
	./configure  --prefix=$INSTALL_DDIR --enable-shared --disable-asm
	make -j$cpu
	make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2