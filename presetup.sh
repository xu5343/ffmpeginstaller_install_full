#!/bin/bash
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
SOURCE_URL='http://mirror.ffmpeginstaller.com/source/'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
#presetup
export TMPDIR=$HOME/tmp
echo -n "删除无用的库，请稍候............."
rm -rf $INSTALL_SDIR
mkdir -p $INSTALL_SDIR

rm -rf /lib/liba52*
rm -rf /lib/libamr*
rm -rf /lib/libavcodec*
rm -rf /lib/libavformat*
rm -rf /lib/libavutil*
rm -rf /lib/libdha*
rm -rf /lib/libfaac*
rm -rf /lib/libfaad*
rm -rf /lib/libmp3lame*
rm -rf /lib/libmp4v2*
rm -rf /lib/libogg*
rm -rf /lib/libtheora*
rm -rf /lib/libvorbis*

rm -rf /usr/lib/liba52*
rm -rf /usr/lib/libamr*
rm -rf /usr/lib/libavcodec*
rm -rf /usr/lib/libavformat*
rm -rf /usr/lib/libavutil*
rm -rf /usr/lib/libdha*
rm -rf /usr/lib/libfaac*
rm -rf /usr/lib/libfaad*
rm -rf /usr/lib/libmp3lame*
rm -rf /usr/lib/libmp4v2*
rm -rf /usr/lib/libogg*
rm -rf /usr/lib/libtheora*
rm -rf /usr/lib/libvorbis*

rm -rf /usr/local/lib/liba52*
rm -rf /usr/local/lib/libamr*
rm -rf /usr/local/lib/libavcodec*
rm -rf /usr/local/lib/libavformat*
rm -rf /usr/local/lib/libavutil*
rm -rf /usr/local/lib/libdha*
rm -rf /usr/local/lib/libfaac*
rm -rf /usr/local/lib/libfaad*
rm -rf /usr/local/lib/libmp3lame*
rm -rf /usr/local/lib/libmp4v2*
rm -rf /usr/local/lib/libogg*
rm -rf /usr/local/lib/libtheora*
rm -rf /usr/local/lib/libvorbis*

unlink  /usr/bin/ffmpeg >/dev/null 2>&1
unlink /usr/local/bin/ffmpeg >/dev/null 2>&1
unlink /bin/mplayer >/dev/null 2>&1
unlink /usr/bin/mplayer >/dev/null 2>&1
unlink  /usr/local/bin/mplayer >/dev/null 2>&1
unlink /bin/mencoder >/dev/null 2>&1
unlink /usr/bin/mencoder  >/dev/null 2>&1
unlink  /usr/local/bin/mencoder >/dev/null 2>&1
unlink /bin/flvtool2 >/dev/null 2>&1
unlink /usr/bin/flvtool2 >/dev/null 2>&1
unlink  /usr/local/bin/flvtool2 >/dev/null 2>&1
rm -rf /usr/local/cpffmpeg
rm -rf $HOME/tmp
mkdir -p $HOME/tmp
echo -n ".......... done"
echo " "
echo "creating folders..........done"
echo -n "Creating ldd configurations "
cp -f ./ffmpeginstall.so.conf /etc/ld.so.conf.d/
echo -n ".......... done"
