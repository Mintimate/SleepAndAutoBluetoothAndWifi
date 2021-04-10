## 简介

这是MAC下一个睡眠自动关闭蓝牙WIFI，睡醒自动开启蓝牙WIFI的脚本。
修改自[dreamncn/SleepWithoutBluetoothAndWifi](https://github.com/dreamncn/SleepWithoutBluetoothAndWifi)

只需执行一次该脚本即可实现睡眠关闭蓝牙WIFI功能.

## 安装方法

1. 如果已经装好brew并能够正常更新软件，打开终端，将install.sh拖入终端 回车执行安装（**推荐**）,如果Homebrew未安装，可以查看教程：[Homebrew安装方法 ](https://mintimate.cn/2020/04/05/Homebrew/)
2. 如果未安装brew或安装失败，打开终端，将install-without-brew.sh拖入终端 回车执行安装

## Wiki

### 如何安装？
下载本脚本：
- 运行`install.sh`脚本后，按提示操作。（有Homebrew情况）
- 运行`install-without-brew.sh`脚本后，按提示操作（无Homebrew情况，且不推荐）

### 如何测试是否生效
打开Mac的睡眠模式，盖下屏幕。等5min后打开屏幕，看看在解锁前，状态栏上的Wi-Fi是否为关闭状态，是则为脚本启动成功。

### 如何卸载？
运行`uninstall.sh`脚本即可。
或者手动删除相关文件：
Homebrew方法安装：
```
brew services stop sleepwatcher
brew uninstall sleepwatcher
brew uninstall blueutil
cd ~
sudo rm -rf .sleep
sudo rm -rf .wakeup
```
非Homebrew方法安装：
```
sudo launchctl unload /Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist
sudo launchctl kill sleepwatcher
sudo rm -rf /Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist 
sudo rm -rf /usr/local/sbin/sleepwatcher
sudo rm -rf /usr/local/bin/blueutil
sudo rm -rf /usr/local/share/man/man8/sleepwatcher.8
sudo rm -rf .sleep
sudo rm -rf .wakeup
```
