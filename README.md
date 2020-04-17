# 介绍中文
自用备份，只能在i7 8750h版本的小米游戏本上。我只试过10.15.4.其他的可能有问题

# OC
添加OC
oc请自己unlock CFG（用ru.efi工具，偏移量0x3e）
- OC目前不支持三指手势

# ru.efi
1. 把ru文件夹里面的东西复制到一个fat格式的空u盘，开机f12选择这个启动项
2. alt+=进入列表
3. 找到CpuSetup进去，上下移动到3e的位置（左上角会显示你的位置）
4. 按回车键修改为00，Alt+Q保持退出
5. 在找到Sasetup重复上面的步骤

# drivers
* intelwifi可用，但是目前不稳定。推荐开机手动加载。可以加入用户登录项。要改sh和kext里面的一些东西
这个作者已经因为违反开源协议github被删了。接下来关注zxystd大佬的intel wifi驱动，大佬说后期可能会实现airdrop
* 要用wifi驱动先关闭sip

* 改"PathToYourDriver"为你放驱动的路径  "yourLoginPWD" 你的开机密码
* 如果你不知道怎么加登录项和默认终端运行sh。可以直接开机后拖sh到终端图标上也可以
```
#!/bin/bash
cd PathToYourDriver
sudo -S rm -rf /tmp/*.kext << EOF
yourLoginPWD
EOF
sudo cp -r *.kext /tmp
sudo chown -R root:wheel /tmp/*.kext
sudo kextutil /tmp/*.kext

```

搜索 "ssid" 在 kext->contents->info.plist 然后改 "your_wifi_name" 为你的wifi名字 and "your_wifi_pwd" 你的wifi密码


***在kext上右键显示包含内容就可以找到info.plist***
```
<dict>
	<key>BSSID</key>
	<string>YOUR_WIFI_NAME</string>
	<key>BSSID - 2</key>
	<string>KIMAX</string>
	<key>PWD</key>
	<string>YOUR_WIFI_PWD</string>
</dict>
```

# Introduction
This is my Clover backup. I am not responsible for the ISSUE you might have. This is only for i7 8750H version of xiaomi Gaming laptop with Catalina.


# drivers
* Intel wifi works, but you need to load it everytime reboot, Or you can add the sh to your Login Items. Don't forget change the path in sh and the SSID in Kext->content->info.plist. no airdrop, handoff support yet.
* AppleALC: don't update this driver, otherwise you need to inject ID by yourself
* Disable sip before using the wifi driver

Change "PathToYourDriver" and "yourLoginPWD" in run.sh. if you don't know how to add it to login items Just easily drag it onto terminal work as well
```
#!/bin/bash
cd PathToYourDriver
sudo -S rm -rf /tmp/*.kext << EOF
yourLoginPWD
EOF
sudo cp -r *.kext /tmp
sudo chown -R root:wheel /tmp/*.kext
sudo kextutil /tmp/*.kext

```

Search "ssid" in kext->contents->info.plist then change "your_wifi_name" and "your_wifi_pwd"


***right click on kext then choose show contents  to open contents***
```
<dict>
	<key>BSSID</key>
	<string>YOUR_WIFI_NAME</string>
	<key>BSSID - 2</key>
	<string>KIMAX</string>
	<key>PWD</key>
	<string>YOUR_WIFI_PWD</string>
</dict>
```


## Thanks
* EFI: 小思绪
* intelWIFI:大佬因为违反开源协议git已经删除了。后期看zxystd大佬的驱动了
the wifi driver repo was removed beacause the auther broke the GPLV2 protocol. I will update you with [another intel wifi driver project ](https://github.com/zxystd/itlwm), the author said he might implement airdrop and handoff when he has time.
* IntelBlue:[https://github.com/zxystd/IntelBluetoothFirmware](https://github.com/zxystd/IntelBluetoothFirmware)

