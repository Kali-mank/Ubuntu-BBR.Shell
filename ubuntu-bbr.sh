#!/bin/bash
echo "###!!!    Author:Mank Email:admin@mank.top"
echo "###!!!    本脚本为Ubuntu加速脚本 Ubuntu 20.04-ubuntu 18.04"
echo "###!!!    自己看清楚再运行"



echo "Do you wish to Run this shell?"
select yn in "Yes" "No"; do
echo "Do you wish to Run this shell?"
select yn in "Yes" "No"; do
            case $yn in
                            Yes ) echo "Loading..。.." ; break;;
                                    No ) exit;;
                                        esac
                                done

echo "检测系统中"

a=`uname  -a`

b="Darwin"
c="centos"
d="ubuntu"

if [[ $a =~ $b ]];then
    echo "mac不支持" 
    echo "已退出"
    exit 8
    echo "未退出"
elif [[ $a =~ $c ]];then
    echo "centos不支持"
    echo "已退出"
    exit 8
    echo "未退出"
elif [[ $a =~ $d ]];then
    echo "ubuntu"
else
    echo $a
fi




echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
lsmod | grep bbr
echo done!
                                  
