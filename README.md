# Terraform-Ansible

Provision EC2 instance using Terraform.

Automatically allow SSH and HTTP (port 22 and 80).

Configure EC2 using Ansible:
1:Install Nginx.
2:Deploy custom HTML page.

# Project Stucture 

Terraform +Ansible/
├── terraform/
│   ├── main.tf              # Terraform EC2 configuration
│   ├── outputs.tf           # Outputs EC2 IP
│   └── variables.tf         # (Optional) variables used in Terraform
├── ansible/
│   ├── playbook.yml         # Ansible playbook for Nginx setup
│   └── index.html           # Custom HTML page for EC2
├── generate_inventory.sh    # Script to create Ansible inventory (optional)
├── nginx-key.pem            # SSH Key for EC2 (NOT tracked in Git)
└── .gitignore               # Prevents sensitive files from being tracked
