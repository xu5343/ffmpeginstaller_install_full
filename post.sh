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
SOURCE_URL='http://mirror.ffmpeginstaller.com/source'
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package=' '
if [ -e "/scripts/rebuildhttpdconf" ];then
	/scripts/rebuildhttpdconf
fi
clear

echo " "
echo " "
echo "ffmpeg和依赖包安装已完成。 您可以使用以下命令"
echo "主要二进制位置的路径。 确保在转换脚本中进行配置."
echo ""
which {ffmpeg,mplayer,mencoder,flvtool2,MP4Box,yamdi,neroAacEnc}
echo " "
echo "				不要忘记执行以下操作 "
echo " "
echo " "
echo "		编辑您的php.ini并增加post_max_size的值，如果你需要tp post大文件通过php脚本 "
echo " 		编辑您的php.ini并增加upload_max_filesize的值，如果你需要上传big vidoe文件"
echo "		重新启动Web服务器(httpd/nginx,etc.)  "
echo "		测试安装 "
echo " "
echo " "
echo " "
echo -e "$RED"
echo "*************************************************************************"
echo -e "$RESET"
echo ""
#echo "安装mplayer,mencoder命令如下："
#echo "cd /root/ffmpegscript"
#echo "sh mplayer.sh"
echo ""
echo "提示如果安装mplayer,mencoder失败请将错误反馈给：jie5343@126.com，"
echo ""
echo ""
echo "安装mediainfo命令如下："
echo ""
echo "64位系统安装方法："
echo "cd /root/ffmpegscript"
echo "sh mediainfo_64.sh"
echo ""
echo "32位系统安装方法："
echo "cd /root/ffmpegscript"
echo "sh mediainfo_i386.sh"
echo -e "$RED"
echo "**************************************************************************"
echo -e "$RESET"


