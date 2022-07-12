## ffmpeginstaller自动安装程序 

#已经在等众多VPS和服务器的CentOS  5-7的32位和64位系统上测试通过。  
---
请按照以下步骤进行安装
要求：  
1）必须是Linux / Unix / POSIX服务器或VPS，  
2）必须需要root shell（bash）访问，  
3）您的服务器必须有200 MB的可用空间，  
4）检查服务器中是否安装了yum。 如果没有yum，请安装，  
5）请确保已安装automake，autoconf和libtools。建议配置特定分发的yum。  
6）下载安装:   

### 更新
 * add libvpx（2022-7-12）
 * add x265
 

#使用putty或类似的SSH工具登陆VPS或服务器；
---
~~~
yum install -y git wget
git clone https://github.com/xu5343/ffmpeginstaller_install_full.git ffmpeginstaller
cd ffmpeginstaller
bash install.sh
~~~

~~~
which {ffmpeg,ffprobe,qt-faststart,mplayer,mencoder,flvtool2,MP4Box,yamdi,mediainfo,neroAacEnc}
/usr/local/bin/ffmpeg
/usr/local/bin/ffprobe
/usr/local/bin/qt-faststart
/usr/local/bin/mplayer
/usr/local/bin/mencoder
/usr/bin/flvtool2
/usr/local/bin/MP4Box
/usr/local/bin/yamdi
/usr/bin/mediainfo
/usr/local/bin/neroAacEnc  

ffmpeg完成结果：
ffmpeg version 3.1-syslint Copyright (c) 2000-2016 the FFmpeg developers
  built with gcc 4.8.5 (GCC) 20150623 (Red Hat 4.8.5-44)
  configuration: --prefix=/usr/local/cpffmpeg --pkg-config-flags=--static --enable-shared
  --enable-nonfree --enable-gpl --enable-pthreads --enable-libfreetype
  --enable-libopencore-amrnb --enable-decoder=liba52 --enable-libopencore-amrwb 
  --enable-libfaac --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 
  --enable-libx265 --enable-libfribidi --enable-libass --enable-fontconfig --enable-openssl
  --enable-libvpx --extra-libs=-lpthread --enable-postproc
  --enable-swscale --enable-runtime-cpudetect --enable-libxvid 
  --extra-cflags=-I/usr/local/cpffmpeg/include/ --extra-ldflags=-L/usr/local/cpffmpeg/lib --enable-version3 --extra-version=syslint
~~~
