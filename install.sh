#!/data/data/com.termux/files/usr/bin/bash
set +e
#换源，安装依赖
apt update
apt install x11-repo
if [ -f /data/data/com.termux/files/usr/bin/aria2c ]
then
if [ -f /data/data/com.termux/files/usr/bin/p7zip ]
then
if [ -f /data/data/com.termux/files/usr/var/lib/dpkg/info/coreutils.list ]
then
if [ -f /data/data/com.termux/files/usr/bin/tar ]
then
echo 依赖已安装，跳过
else 
apt install tar xz-utils -y >log.txt
fi
else
apt install -y coreutils >log.txt
fi
else
apt install -y p7zip >log.txt
fi
else 
apt install -y aria2 >log.txt
fi
#下载并解压缩termux prefix
echo 5b34da13d9c7876183c6ec2446214edac2d6d470  termux.tar.xz > termux.tar.xz.sha1
if sha1sum -c termux.tar.xz.sha1 >log.txt
then echo termux.tar.xz已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/termux.tar.xz >log.txt
fi

if sha1sum -c termux.tar.xz.sha1 >log.txt
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

if [ -f termux.tar.xz ]
then tar -xvf termux.tar.xz -C /data/data/com.termux/files/ >log.txt
else
echo termux.tar.xz已解压，跳过
fi



#下载plasma.tar.xz.1/2/3/4/5
echo 25d2ff2bf287009bdbda8b4871f6431d30a6450e  plasma.tar.xz.7z.001 > plasma.tar.xz.7z.001.sha1
if sha1sum -c plasma.tar.xz.7z.001.sha1 >log.txt
then echo plasma.tar.xz.7z.001已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/https://github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.001 >log.txt
fi

if sha1sum -c plasma.tar.xz.7z.001.sha1 >log.txt
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

echo 38bc1a0aa1c29b066d0f9cb47d94b799c65ed313  plasma.tar.xz.7z.002 > plasma.tar.xz.7z.002.sha1 
if sha1sum -c plasma.tar.xz.7z.002.sha1 >log.txt
then echo plasma.tar.xz.7z.002已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.002 >log.txt
fi

if sha1sum -c plasma.tar.xz.7z.002.sha1
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

echo 303f41019d2a3f0d2fe0aeef7063ff7c301ed4e5  plasma.tar.xz.7z.003 > plasma.tar.xz.7z.003.sha1
if sha1sum -c plasma.tar.xz.7z.003.sha1 >log.txt
then echo plasma.tar.xz.7z.003已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.003 >log.txt
fi

if sha1sum -c plasma.tar.xz.7z.003.sha1
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

echo cc700b4cae43ddaeddfd5ed03974a97ebb2f68a7  plasma.tar.xz.7z.004 > plasma.tar.xz.7z.004.sha1
if sha1sum -c plasma.tar.xz.7z.004.sha1 >log.txt
then echo plasma.tar.xz.7z.004已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.004 >log.txt
fi

if sha1sum -c plasma.tar.xz.7z.004.sha1 >log.txt
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

echo c712ff34edf0ef97c12c72c57b14bf66ca22e51a  plasma.tar.xz.7z.005 > plasma.tar.xz.7z.005.sha1
if sha1sum -c plasma.tar.xz.7z.005.sha1 >log.txt
then echo plasma.tar.xz.7z.005已缓存
else aria2c -x 16 -s 16 https://mirror.ghproxy.com/github.com/kde-yyds/termux-x11-plasma-image/releases/download/v1.0/plasma.tar.xz.7z.005 >log.txt
fi

if sha1sum -c plasma.tar.xz.7z.005.sha1 >log.txt
then echo 下载成功
else echo 下载失败，即将退出，请检查log.txt的输出信息;exit 1;
fi

#解压获得plasma.tar.xz
if [ -f plasma.tar.xz.7z.005 ]
then
test -f plasma.tar.xz || 7z x plasma.tar.xz.7z.001 >log.txt
else
echo plasma.tar.xz.7z已解压
fi


#解压plasma.tar.xz
if [ -f plasma.tar.xz ]
then 
test -d containers || tar -xvf plasma.tar.xz -C /data/data/com.termux/files/home/ >log.txt
else
echo plasma.tar.xz已解压
fi

#删除缓存文件
rm -rf termux.tar.xz termux.tar.xz.sha1 plasma.tar.xz* -v >log.txt
#创建启动命令
if [ -f /data/data/com.termux/files/usr/bin/plasma ]
then 
echo 安装完毕，输入plasma并回车即可启动termux-x11+KDE Plasma ; exit 0
else
echo "#!/data/data/com.termux/files/usr/bin/bash



termux-x11 :1 &
sleep 2
/data/data/com.termux/files/home/containers/scripts/debianbullseye_xrenderkwin_xfce4-panel.sh&
/data/data/com.termux/files/home/containers/scripts/archlinuxarm_plasma.sh
">/data/data/com.termux/files/usr/bin/plasma
chmod +x /data/data/com.termux/files/usr/bin/plasma
sed -i 's/env LD_PRELOAD=/env -u LD_PRELOAD/g' /data/data/com.termux/files/home/containers/scripts/*
#sed -i 's/env LD_PRELOAD=\'\'/env -u LD_PRELOAD/g' /data/data/com.termux/files/home/containers/scripts/*
echo 安装完毕，输入plasma并回车即可启动termux-x11+KDE Plasma
exit 0
fi
