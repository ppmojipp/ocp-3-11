# DCS Environment

# Remote Server
  - IP Address : 10.9.50.180
  - Username   : administrator
  - Password   : P@55w0rd
  - Using SSH for all SSH connection
    - Use saved session : ocp-ansible-node-01
  - Using Chrome for all HTTP/HTTPS connection
# Bastion Host
  - How to access : From Remote Server or SSH to 10.9.50.180 with (ansusr/password) and ssh to 192.168.1.111 (ansusr/password)
  - Hostname      : ocp-ansible-node-01
  - Username      : ansusr
  - Password      : password
  - Root Password : Dcsaig123
# Master Node
  - How to access : SSH to the Bastion Host and change to root user with (sudo su -). SSH to ocp-master-node-01 (ssh ocp-master-node-01)
  - Hostname      : ocp-master-node-01
  - Username      : ansusr
  - Password      : password
  - Root Password : Dcsaig123
# Infra Node
  - How to access : SSH to the Bastion Host and change to root user with (sudo su -). SSH to ocp-infra-node-01 (ssh ocp-infra-node-01)
  - Hostname      : ocp-infra-node-01
  - Username      : ansusr
  - Password      : password
  - Root Password : Dcsaig123
# Worker Node
  - How to access : SSH to the Bastion Host and change to root user with (sudo su -). SSH to ocp-worker-node-01 (ssh ocp-worker-node-01)
  - Hostname      : ocp-worker-node-01
  - Username      : ansusr
  - Password      : password
  - Root Password : Dcsaig123
