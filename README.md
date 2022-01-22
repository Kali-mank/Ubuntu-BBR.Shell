# Ubuntu-BBR.Shell

保证您的Linux kernel 4.9及以上才能开启TCP BBR拥塞算法
BBR 目的是要尽量跑满带宽, 并且尽量不要有排队的情况, 效果并不比速锐差

Linux kernel 4.9+ 已支持 tcp_bbr 下面简单讲述基于KVM架构VPS如何开启

安装Linux kernel 4.9以上的版本
　、

Debian 8+ / Ubuntu 14.04
下载最新内核
# wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14.12/linux-image-4.14.12-041412-generic_4.14.12-041412.201801051649_amd64.deb
安装内核
# dpkg -i linux-image-4.*.deb
删除旧版内核（可选）
# dpkg -l | grep linux-image 
# apt-get purge 旧内核
更新grub并重启服务器
# update-grub
# reboot
Ubuntu16.04
安装 Hardware Enablement Stack (HWE)，自动更新内核
# apt install --install-recommends linux-generic-hwe-16.04
删除旧版内核（可选）
# apt autoremove
重启服务器以启用最新内核
# reboot
