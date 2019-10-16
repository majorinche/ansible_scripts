
usage:
ansible-playbook -i /etc/ansible/hosts ansible_scripts/okd_cluster_install/okd_copy.yml


[okd00]
okd00[1:3].sonic.com ansible_ssh_user="root" ansible_ssh_pass="password"
[okd0]
okd0[1:3].sonic.com ansible_ssh_user="root" ansible_ssh_pass="root"
[okd-gl]
okd0[4:6].sonic.com ansible_ssh_user="root" ansible_ssh_pass="password"

