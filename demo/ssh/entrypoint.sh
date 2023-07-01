#!/bin/bash

useradd -m -s /bin/bash $SSH_USER
echo "$SSH_USER:$SSH_PASSWORD" | chpasswd

/usr/sbin/sshd -D

