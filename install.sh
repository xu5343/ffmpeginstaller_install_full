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
GREEN='\033[01;32m'
_version=`cat ./version.txt`
clear
echo -e "$GREEN*************************************************************$RESET"
echo -e "          FFmpeg安装向导版本 $GREEN $_version $RESET"
echo -e "                  Copyright (c) 2007-2016  "
echo -e "              Linux服务器管理和软件开发服务  "
echo -e "$GREEN*************************************************************$RESET"
echo " "
echo " "
export who=`whoami`
lpid=$$
echo "">/var/log/ffmpeginstall.$_version.log.$lpid
echo " 所有操作都将记录到 /var/log/ffmpeginstaller.$_version.log.$lpid "
echo -e "$RED"
echo "*************************************************************************"
echo -e "$RESET"
#Don't edit or move the following credits without permissin
echo -e "\033[1mLooking for a server support team ?$RESET"
echo ""
echo -e "雇用服务器管理员$ GREEN @ 50％$ RESET的折扣率. "
echo -e "雇用cpanel / directadmin支持计划 $GREEN @ 50% $RESET 折扣."
echo -e "雇用一个半导体团队来管理您的服务器$GREEN  @ 50% $RESET 折扣."
echo -e "设置专门的支持团队$GREEN  @ 50%  $RESET 折扣."
echo ""
echo -e "登录联系 \033[4mjie5343@126.com$RESET for  得到上述折扣券，或"
echo -e "jie5343我们 @ \033[1m \033[4m SyslintSkype$RESET   用于以此折扣下订单."
echo ""
echo "此优惠只适合您 !!!"
echo ""
echo -e "$RED"
echo "**************************************************************************"
echo -e "$RESET"
echo  "提示:由于mplayer mencoder安装源不稳定，避免安装出错特取消了mplayer mencoder的自动安装，如何安装mplayer mencoder，安装完所有程序后，会有说明。"
echo ""
echo  "如果需要取消安装，请按Ctrl + C  ...."
echo -n  "按ENTER开始安装  ...."
read option
if [[ $who == "root" ]];then
       sh start.sh | tee /var/log/ffmpeginstaller.$_version.log.$lpid
else
        echo "                  对不起，你不是root用户。 这不是为你的."
        echo "                  您需要管理员权限才能安装此应用程序"
fi

