#!/data/data/com.termux/files/usr/bin/bash

#换源，安装依赖
rm -rf /data/data/com.termux/files/usr/etc/apt/sources.list.d/
echo "deb https://mirrors.bfsu.edu.cn/termux/apt/termux-main/ stable main
deb https://mirrors.bfsu.edu.cn/termux/apt/termux-x11/ x11 main" > /data/data/com.termux/files/usr/etc/apt/sources.list
if ls 1145141919810
then
echo 已安装依赖，跳过
else
apt update
apt install coreutils tar aria2 p7zip -y
fi
touch 1145141919810

#下载并解压缩termux prefix
echo 5b34da13d9c7876183c6ec2446214edac2d6d470  termux.tar.xz > termux.tar.xz.sha1
if sha1sum -c termux.tar.xz.sha1
then echo termux.tar.xz已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/termux.tar.xz
fi

if sha1sum -c termux.tar.xz.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

if
ls 1145141919811
then echo termux.tar.xz已解压，跳过
else
tar -xvf termux.tar.xz -C /data/data/com.termux/files/
fi

touch 1145141919811

#下载plasma.tar.xz.1/2/3/4/5
echo 25d2ff2bf287009bdbda8b4871f6431d30a6450e  plasma.tar.xz.7z.001 > plasma.tar.xz.7z.001.sha1
if sha1sum -c plasma.tar.xz.7z.001.sha1
then echo plasma.tar.xz.7z.001已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.001
fi

if sha1sum -c plasma.tar.xz.7z.001.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

echo 38bc1a0aa1c29b066d0f9cb47d94b799c65ed313  plasma.tar.xz.7z.002 > plasma.tar.xz.7z.002.sha1
if sha1sum -c plasma.tar.xz.7z.002.sha1
then echo plasma.tar.xz.7z.002已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.002
fi

if sha1sum -c plasma.tar.xz.7z.002.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

echo 303f41019d2a3f0d2fe0aeef7063ff7c301ed4e5  plasma.tar.xz.7z.003 > plasma.tar.xz.7z.003.sha1
if sha1sum -c plasma.tar.xz.7z.003.sha1
then echo plasma.tar.xz.7z.003已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.003
fi

if sha1sum -c plasma.tar.xz.7z.003.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

echo cc700b4cae43ddaeddfd5ed03974a97ebb2f68a7  plasma.tar.xz.7z.004 > plasma.tar.xz.7z.004.sha1
if sha1sum -c plasma.tar.xz.7z.004.sha1
then echo plasma.tar.xz.7z.004已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.004
fi

if sha1sum -c plasma.tar.xz.7z.004.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

echo c712ff34edf0ef97c12c72c57b14bf66ca22e51a  plasma.tar.xz.7z.005 > plasma.tar.xz.7z.005.sha1
if sha1sum -c plasma.tar.xz.7z.005.sha1
then echo plasma.tar.xz.7z.005已缓存
else aria2c -x 16 -s 16 http://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.005
fi

if sha1sum -c plasma.tar.xz.7z.005.sha1
then echo 下载成功
else echo 下载失败，即将退出;exit 1;
fi

#解压获得plasma.tar.xz
if
ls 1145141919812
then echo plasma.tar.xz.7z已解压
else
7z x plasma.tar.xz.7z.001
fi
touch 1145141919812

#解压plasma.tar.xz
if
ls 1145141919813
then echo plasma.tar.xz已解压
else
tar -xvf plasma.tar.xz -C /data/data/com.termux/files/home/
fi
touch 1145141919813

#创建启动命令
echo "#!/data/data/com.termux/files/usr/bin/bash



termux-x11 :1 &
sleep 2
/data/data/com.termux/files/home/containers/scripts/debianbullseye_xrenderkwin_xfce4-panel.sh&
/data/data/com.termux/files/home/containers/scripts/archlinuxarm_plasma.sh
">/data/data/com.termux/files/usr/bin/plasma
chmod +x /data/data/com.termux/files/usr/bin/plasma


echo 安装完毕，输入plasma并回车即可启动termux-x11+KDE Plasma
