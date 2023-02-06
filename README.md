# 关于本项目
在termux-x11里流畅运行KDE Plasma 5.26
![](https://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-installer/raw/master/1.jpg)
(*开庭时记得带上你的脚本（指自带的jntm.mp3*))  
FPS稳定60帧  
只因KDE Plasma跑在archlinux里  
但kwin是另一个debian11的老kwin  
还保留了xrender混成器后端  
所以软件渲染仍然十分甚至九分丝滑流畅（喜

# 使用教程
## 安装termux和termux-x11
termux：<https://ghproxy.com/github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk>
termux-x11：<https://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-installer/raw/master/termux-x11.apk>
## 其他
1.建议把手只因的屏幕分辨率调低，保证软件渲染十分甚至九分流畅不掉帧  
2.打开termux-x11,按Preferences,把fullscreen勾上，把Show additional keyboard勾去掉
## 安装
进入termux  
运行
```
echo "deb https://mirrors.bfsu.edu.cn/termux/apt/termux-main/ stable main
deb https://mirrors.bfsu.edu.cn/termux/apt/termux-x11/ x11 main">/data/data/com.termux/files/usr/etc/apt/sources.list
rm -rf /data/data/com.termux/files/usr/etc/apt/sources.list.d/
apt update
apt install wget -y
mkdir tmp
cd tmp
wget https://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-installer/raw/master/install.sh
chmod +x install.sh
./install.sh
```

注：若安装过程被打断，重新运行即可，支持从中断的地方继续安装
![](https://ghproxy.com/github.com/kde-yyds/termux-x11-plasma-installer/raw/master/2.jpg)
