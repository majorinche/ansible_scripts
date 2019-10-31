#!/bin/sh
this script has been depricate, just for record

single_copy(){
	yum -y install docker
	scp -rp harbor:/etc/docker/certs.d/docker-repo.sonic.com /etc/docker/certs.d/
        mv /etc/docker/certs.d/docker-repo.sonic.com/docker-repo.sonic.com.cert /etc/docker/certs.d/docker-repo.sonic.com/docker-repo.sonic.com.crt
	service docker restart
	cat /etc/docker/certs.d/docker-repo.sonic.com/docker-repo.sonic.com.crt >> /etc/pki/tls/certs/ca-bundle.crt
}

# ssh connection does not support redirection function, like >>
#cat /etc/docker/certs.d/docker-repo.sonic.com/docker-repo.sonic.com.crt >> /etc/pki/tls/certs/ca-bundle.crt
single_copy
