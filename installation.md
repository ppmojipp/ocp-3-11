# ocp-3-11
- Step 1 : subscription-manager register --username=xxxx --password=xxxx
- Step 2 : subscription-manager attach --pool=xxxxxxx
- Step 3 : yum-config-manager --disable \*
- Step 4 : subscription-manager repos --enable="rhel-7-server-rpms" --enable="rhel-7-server-extras-rpms" --enable="rhel-7-server-ose-3.11-rpms" --enable="rhel-7-server-ansible-2.6-rpms"
- Step 5 : yum install wget git net-tools bind-utils yum-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct NetworkManager
