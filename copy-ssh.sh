#!/bin/sh
#Run ssh-keygen First!!!!
host=$1
ssh-copy-id -i ~/.ssh/id_rsa.pub $host;
# If ansible still connect with wrong key Please run command
# ansible all -m ping --ask-pass --ask-sudo-pass
