#!/bin/sh
config_file="/etc/netplan/01-netcfg.yaml"
old_ip=`ip a | grep 25.18 | awk '{print $2}' | awk -F'/' '{print $1}' | awk -F'.' '{print $4}'`
new_ip_fourth_value=`expr $old_ip - 81`
echo $new_ip_fourth_value
new_ip=172.18.188.$new_ip_fourth_value"\/24]"
echo $new_ip
# change ip address, can be repeatable
grep $new_ip $config_file
if [ $? != 0 ];then
	sudo sed -i "8s/]/,${new_ip}/g" /etc/netplan/01-netcfg.yaml
fi

# change gateway, can be repeated run
sudo sed -i '9s/192.168.242.254/172.18.188.1/' /etc/netplan/01-netcfg.yaml

# add dnsserver, can be repeatable,skip

# change hostname, can be repeatable
case $old_ip in
181)	hostname="d0401";;
182)	hostname="d0402";;
183)	hostname="d0403";;
184)	hostname="d0404";;
185)	hostname="d0405";;
186)	hostname="d0501";;
187)	hostname="d0502";;
188)	hostname="d0503";;
189)	hostname="d0504";;
190)	hostname="d0505";;
esac

echo $hostname
sudo hostnamectl set-hostname $hostname-$new_ip_fourth_value
