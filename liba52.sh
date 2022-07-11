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
SOURCE_URL=$_url/a52dec
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='a52dec-0.7.4.tar.gz'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
cd $INSTALL_SDIR/
rm -rf a52dec-0.7.4*
#wget $SOURCE_URL/$_package
mv /root/ffmpeginstaller/source/$_package $INSTALL_SDIR
tar -xvzf $_package
cd a52dec-0.7.4/
./bootstrap
ARCh=`arch`
#64bit processor bug fix
if [[ $ARCh == 'x86_64' ]];then
	./configure --prefix=$INSTALL_DDIR --enable-shared 'CFLAGS=-fPIC'	
        
else
        ./configure --prefix=$INSTALL_DDIR  --enable-shared
fi

make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2