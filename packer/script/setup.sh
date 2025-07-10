#! /bin/bash

sudo apt update
sudo apt upgrade -y

sudo systemctl enable ssh

cat << EOF | sudo tee /home/ubuntu/.ssh/authorized_keys
<your_ansible_ssh_key>
EOF
