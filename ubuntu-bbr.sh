#!/bin/bash
echo "###!!!    Author:Mank Email:admin@mank.top"
echo "###!!!    本脚本为Ubuntu加速脚本 Ubuntu 20.04+"
echo "###!!!    懒得写系统判断 自己看清楚再运行"



echo "Do you wish to Run this shell?"
select yn in "Yes" "No"; do
	    case $yn in
		            Yes ) echo "Loading" ; break;;
			            No ) exit;;
				        esac
				done


echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
lsmod | grep bbr
echo done!
