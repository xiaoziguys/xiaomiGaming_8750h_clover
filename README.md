# 介绍中文
自用备份，只能在i7 8750h版本的小米游戏本上。我只试过10.15.4\10.15.5.其他的可能有问题.更新随缘，win10真香。除了wifi，独显都可以正常使用。oc的引导快捷键灵敏度不高，经常按不出来直接进系统。推荐打开系统选取界面，timeout设为1吧。 Clover是QQ群别人的，我没有研究过，OC是自己弄的。

# OC 0.5.9
oc请自己unlock CFG（用ru.efi工具，偏移量0x3e），如果不解锁可以打开Kernel-Quirks里面的AppleCpuPmCfgLock和AppleXcpmCfgLock（我默认打开了，为了有些人不想解锁，如果你解锁了可以关了）。用的这个efi的请自己先生成一个新的序列号。不要大家用一个，有封号的风险。
- 如果要激活win，请用win的uuid
- 我定制了自己的usb，左边第二个和后面那个被我改成内置设备，关闭了usb3.0功能，因为我固定用来插键盘和usb网卡
- oc看两个网址就好了[使用OpenCore引导黑苹果 by XJN](https://blog.xjn819.com/?p=543)和[oc-little](https://github.com/daliansky/OC-little)

# Clover
clover的声卡ID十进制是99，十六进制63000000

# ru.efi
1. 把ru文件夹里面的东西复制到一个fat格式的空u盘，开机f12选择这个启动项
2. alt+=进入列表
3. 找到CpuSetup进去，上下移动到3e的位置（左上角会显示你的位置）
4. 按回车键修改为00，Alt+Q保持退出
5. 在找到Sasetup重复上面的步骤


# Introduction
This is my Clover backup. I am not responsible for the ISSUE you might have. This is only for i7 8750H version of xiaomi Gaming laptop with Catalina.


# drivers
* AppleALC: don't update this driver, otherwise you need to inject ID by yourself,HEX ID is 63000000。Decimal ID is 99
* Disable sip before using the wifi driver


## Thanks
* Clover: 小思绪
* intelWIFI:大佬因为违反开源协议git已经删除了。后期看zxystd大佬的驱动了
the wifi driver repo was removed beacause the auther broke the GPLV2 protocol. I will update you with [another intel wifi driver project ](https://github.com/zxystd/itlwm), the author said he might implement airdrop and handoff when he has time.
* IntelBlue:[https://github.com/zxystd/IntelBluetoothFirmware](https://github.com/zxystd/IntelBluetoothFirmware) 

