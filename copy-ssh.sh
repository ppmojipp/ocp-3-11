#!/bin/sh
#Run ssh-keygen First!!!!
host=$1
ssh-copy-id -i ~/.ssh/id_rsa.pub $host;
