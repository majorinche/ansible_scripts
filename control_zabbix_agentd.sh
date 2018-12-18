#!/bin/bash
# can not use /sbin/service to start, as service command must be run as root user, but zabbix-agent need zabbix user

action=$1
function stop_zabbix_agentd(){
	a=`ps aux | grep zabbix_agentd | grep -v grep`
	if [ $? == 0 ];then
		kill -9 `ps aux  | grep zabbix_agentd | grep -v grep | awk '{print $2}'`
		echo "kill ok"
	fi
}
function start_zabbix_agentd(){
        nohup /home/zabbix/sbin/zabbix_agentd -f -c /home/zabbix/conf/zabbix_agentd.conf &
	echo -e 'zabbix_agentd start ok'
}
if [ $action == 'stop' ];then
        stop_zabbix_agentd
elif [ $action == 'start' ];then
        start_zabbix_agentd
fi
