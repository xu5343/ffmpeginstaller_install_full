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
#Don't edit or move the following credits without permissin
echo -e "\033[1mLooking 为一个服务器支持团队 ?$RESET"
echo ""
echo -e "雇用服务器管理员 $GREEN @ 50% $RESET 折扣. "
echo -e "雇用cpanel / directadmin支持计划 $GREEN @ 50% $RESET 折扣."
echo -e "雇用一个半导体团队来管理您的服务器$ GREEN  @ 50% $RESET 折扣."
echo -e "设置专门的支持团队$GREEN  @ 50%  $RESET 折扣."
echo ""
echo -e "登录到 \033[4mjie5343@126.com$RESET 获得上述折扣券，或"
echo -e "jie5343我们 @ \033[1m \033[4m SyslintSkype$RESET   用于以此折扣下订单。"
echo ""
echo "此优惠只适合您 !!!"
echo ""
echo "*************************************************************************"
echo ""
echo "安装mplayer,mencoder命令如下："
echo "cd /root/ffmpegscript"
echo "sh mplayer.sh"
echo ""
echo "提示安装mplayer,mencoder最佳时间北京时间：凌晨12:00-04:00，经过观察安装源只有这个时候可以连接，至于为什么会这样，我们也不是很清楚，"
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


