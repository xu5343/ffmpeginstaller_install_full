## ffmpeginstaller自动安装程序 

#已经在等众多VPS和服务器的CentOS 5-7的32位和64位系统上测试通过。  
---
请按照以下步骤进行安装
要求：
1）必须是Linux / Unix / POSIX服务器或VPS，  
2）必须需要root shell（bash）访问，  
3）您的服务器必须有200 MB的可用空间，  
4）检查服务器中是否安装了yum。 如果没有yum，请安装，  
5）请确保已安装automake，autoconf和libtools。建议配置特定分发的yum。  
6）下载安装:  

#使用putty或类似的SSH工具登陆VPS或服务器；
---
~~~
yum install -y git wget
git clone https://github.com/xu5343/ffmpeginstaller_install_full.git ffmpeginstaller
cd ffmpeginstaller
sh install.sh
~~~
