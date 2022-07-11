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
_url=`cat ./url.txt`
SOURCE_URL=$_url/mediainfo_i386
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_packagei386='mediainfo_i386.zip'
_package64='mediainfo_64.zip'
sleep 2
#64bit 32bit mediainfo bug fix
ldconfig
if [ $(getconf WORD_BIT) = '32' ] && [ $(getconf LONG_BIT) = '64' ] ; then
    echo -e $RED"Installation of $_package64 ....... started"$RESET	
else
    echo -e $RED"Installation of $_packagei386 ....... started"$RESET 
fi
cd $INSTALL_SDIR
#64bit 32bit processor bug fix
ldconfig
if [ $(getconf WORD_BIT) = '32' ] && [ $(getconf LONG_BIT) = '64' ] ; then
    rm -vrf mediainfo_64*
    #wget http://downloads.sourceforge.net/zenlib/libzen0-0.4.29-1.x86_64.CentOS_6.rpm
    #wget http://sourceforge.net/projects/mediainfo/files/binary/libmediainfo0/0.7.64/libmediainfo0-0.7.64-1.x86_64.CentOS_6.rpm
    #http://sourceforge.net/projects/mediainfo/files/binary/mediainfo/0.7.64/mediainfo-0.7.64-1.x86_64.CentOS_6.rpm
    #wget $SOURCE_URL/$_package64
    mv /root/ffmpeginstaller/source/$_package64 $INSTALL_SDIR
    yum -y install unzip
    unzip mediainfo_64.zip
    cd mediainfo_64
    rpm -ivh libzen0-0.4.29-1.x86_64.CentOS_6.rpm
    rpm -ivh libmediainfo0-0.7.64-1.x86_64.CentOS_6.rpm
    rpm -ivh mediainfo-0.7.64-1.x86_64.CentOS_6.rpm	
    echo -e $RED"Installation of $_package64 ....... Completed"$RESET	
else
    rm -vrf mediainfo_i386*
    #wget http://downloads.sourceforge.net/zenlib/libzen0-0.4.14-1.i386.CentOS_5.rpm
    #wget http://downloads.sourceforge.net/zenlib/libzen0-devel-0.4.14-1.i386.CentOS_5.rpm
    #wget http://downloads.sourceforge.net/mediainfo/libmediainfo0-0.7.32-1.i386.CentOS_5.rpm
    #wget http://downloads.sourceforge.net/mediainfo/libmediainfo0-devel-0.7.32-1.i386.CentOS_5.rpm
    #wget http://downloads.sourceforge.net/mediainfo/mediainfo-0.7.32-1.i386.CentOS_5.rpm
    #wget $SOURCE_URL/$_packagei386
    mv /root/ffmpeginstaller/source/$_packagei386 $INSTALL_SDIR
    yum -y install unzip
    unzip mediainfo_i386.zip
    cd mediainfo_i386
    rpm -vi libzen0-0.4.14-1.i386.CentOS_5.rpm
    rpm -vi libzen0-devel-0.4.14-1.i386.CentOS_5.rpm
    rpm -vi libmediainfo0-0.7.32-1.i386.CentOS_5.rpm
    rpm -vi libmediainfo0-devel-0.7.32-1.i386.CentOS_5.rpm
    rpm -vi mediainfo-0.7.32-1.i386.CentOS_5.rpm
    echo -e $RED"Installation of $_packagei386 ....... Completed"$RESET 
fi
sleep 2
