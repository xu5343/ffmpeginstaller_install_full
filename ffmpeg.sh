#!/bin/bash
#FFMPEG安装脚本

#  版权所有（C）2007-2014 Sherin.co.in。 版权所有,有如何问题请联系：jie5343@126.com。
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
SOURCE_URL=$_url/ffmpeg
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='FFMPEG'
clear
sleep 2
ffmpeg_source=$_package
ldconfig
echo -e $RED"Installation of $_package ....... started"$RESET
cd $INSTALL_SDIR
echo "Removing old source"
   rm -vrf ffmpeg*
   #wget $SOURCE_URL/$ffmpeg_source
   #tar -xvzf $ffmpeg_source
#	git clone git://source.ffmpeg.org/ffmpeg.git ffmpeg
#   cd ffmpeg/
#wget http://ffmpeg.org/releases/ffmpeg-3.1.tar.gz
#wget $SOURCE_URL/ffmpeg-3.1.tar.gz
mv /root/ffmpeginstaller/source/ffmpeg-3.1.tar.gz $INSTALL_SDIR
tar -xvzf ffmpeg-3.1.tar.gz
cd ffmpeg-3.1
   ldconfig
./configure --prefix=$INSTALL_DDIR --enable-shared --enable-nonfree \
		--enable-gpl --enable-pthreads --enable-libfreetype  --enable-libopencore-amrnb  --enable-decoder=liba52 \
		--enable-libopencore-amrwb  --enable-libfaac  --enable-libmp3lame \
		--enable-libtheora --enable-libvorbis  --enable-libx264  --enable-libxvid \
		--extra-cflags=-I/usr/local/cpffmpeg/include/ --extra-ldflags=-L/usr/local/cpffmpeg/lib \
		 --enable-version3 --extra-version=syslint
   make -j$cpu
   make tools/qt-faststart   
   make install
   cp -vf tools/qt-faststart /usr/local/cpffmpeg/bin/
   ln -sf /usr/local/cpffmpeg/bin/ffmpeg /usr/local/bin/ffmpeg
   ln -sf /usr/local/cpffmpeg/bin/ffmpeg /usr/bin/ffmpeg
   ln -sf /usr/local/cpffmpeg/bin/qt-faststart /usr/local/bin/qt-faststart
   ln -sf /usr/local/cpffmpeg/bin/qt-faststart /usr/bin/qt-faststart
   ldconfig
   /usr/bin/ffmpeg -formats

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
