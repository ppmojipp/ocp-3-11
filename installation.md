# ocp-3-11 Run all by Ansible
- Step 1 : subscription-manager register --username=xxxx --password=xxxx
- Step 2 : subscription-manager attach --pool=xxxxxxx
- Step 3 : yum-config-manager --disable \\*
- Step 4 : subscription-manager repos --enable="rhel-7-server-rpms" --enable="rhel-7-server-extras-rpms" --enable="rhel-7-server-ose-3.11-rpms" --enable="rhel-7-server-ansible-2.6-rpms"
- Step 5 : yum install wget git net-tools bind-utils yum-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct NetworkManager -y
- Step 6 : yum update -y
- Step 7 : yum install openshift-ansible -y (Only the Bastion Host)
- Step 8 : yum install docker-1.13.1 -y
- Step 9 : docker-storage-setup
- Step 10 - Verify : cat /etc/sysconfig/docker-storage
- Step 10 - Result : DOCKER_STORAGE_OPTIONS="--storage-driver devicemapper --storage-opt dm.fs=xfs --storage-opt dm.thinpooldev=/dev/mapper/rhel-docker--pool --storage-opt dm.use_deferred_removal=true --storage-opt dm.use_deferred_deletion=true "
- Step 11 - Verify : lvs
- Step 11 - Result : LV          VG   Attr       LSize  Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  
  docker-pool rhel twi-a-t---  9.29g             0.00   0.12
- Step 12 : systemctl enable docker
- Step 13 : systemctl start docker
- Step 14 : systemctl is-active docker
- Step 15 : Create htpasswd on the ansible host path /etc/origin/master/htpasswd
