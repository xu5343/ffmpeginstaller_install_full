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

