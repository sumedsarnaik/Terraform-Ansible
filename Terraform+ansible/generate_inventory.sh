#!/bin/bash

IP=$(terraform -chdir=terraform output -raw public_ip)

cat <<EOF > ansible/inventory.ini
[webservers]
ec2 ansible_host=$IP ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/nginx-key.pem
EOF

echo "Inventory created with IP: $IP"
