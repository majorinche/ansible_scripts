#!/bin/sh
config_file="/etc/sysconfig/network-scripts/ifcfg-enp2s0f0:1"
sn=`dmidecode -t system | grep Serial | awk -F': ' '{print $2}'`


case $sn in
215279084)	new_ip="172.18.160.171";;
215279074)	new_ip="172.18.160.172";;
215279093)	new_ip="172.18.160.173";;
215279088)	new_ip="172.18.160.174";;
215279077)	new_ip="172.18.160.175";;
215279065)	new_ip="172.18.160.176";;
215279069)	new_ip="172.18.160.177";;
215279092)	new_ip="172.18.160.178";;
215279060)	new_ip="172.18.160.179";;
215279081)	new_ip="172.18.160.180";;
esac

echo $new_ip
# change ip address, can be repeatable, here is the secondary ip
cat << FFF > $config_file
DEVICE="enp2s0f0:1"
ONBOOT=yes
BOOTPROTO=static
IPADDR=$new_ip
NETMASK=255.255.255.0
GATEWAY=172.18.160.254
FFF


# change hostname, can be repeatable
case $sn in
215279084)	hostname="a1401";;
215279074)	hostname="a1402";;
215279093)	hostname="a1403";;
215279088)	hostname="a1404";;
215279077)	hostname="a1405";;
215279065)	hostname="a1406";;
215279069)	hostname="a1407";;
215279092)	hostname="a1408";;
215279060)	hostname="a1409";;
215279081)	hostname="a1410";;
esac

echo $hostname
sudo hostnamectl set-hostname $hostname
