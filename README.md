🚀 My Terraform Project – Version 2

This project demonstrates how to use Terraform to provision an Ubuntu EC2 instance on AWS eu-north-1, with best practices for reusability and security.

📂 Project Structure
my-terraform-project/
├── main.tf          # EC2 instance, security group, key pair
├── provider.tf      # AWS provider config
├── variables.tf     # Configurable variables (region, instance type, SSH key, CIDRs)
├── outputs.tf       # Outputs like public IP and instance ID
├── .gitignore       # Ignore sensitive files and Terraform state
└── README.md        # Project documentation

🌟 Version Control – Branching

This project uses branches for versioning:
main → Version 1 (basic EC2 instance)
version-2 → Enhanced setup (security group, key pair, outputs)

Create a new branch for Version 2:
git checkout -b version-2

Push branch to GitHub:
git push origin version-2

Switch between branches:
git checkout main        # Go to Version 1
git checkout version-2   # Go to Version 2

⚡ Prerequisites

Terraform
 installed

AWS CLI
 configured

AWS Access Key and Secret Key configured (aws configure)

SSH public key for EC2 access

📌 Variables (variables.tf)
Variable	Description	Default
region	AWS region to deploy	eu-north-1
aws_profile	AWS CLI profile	default
instance_type	EC2 instance type	t2.micro
public_key_path	Path to your SSH public key	~/.ssh/id_rsa.pub
allowed_ssh_cidr	CIDR allowed to SSH	0.0.0.0/0
allowed_http_cidr	CIDR allowed to HTTP	0.0.0.0/0


🚀 Terraform Workflow
Initialize Terraform
terraform init

Validate Configuration
terraform validate

Preview the Plan
terraform plan

Apply Configuration
terraform apply
Type yes to confirm

Terraform will create:
Ubuntu EC2 instance
Security Group (SSH + HTTP)
Key Pair
Outputs for instance ID and public IP

Destroy Resources (Optional)
terraform destroy

🔑 Accessing the EC2 Instance

Get the public IP from Terraform output or AWS Console:
terraform output public_ip

SSH into the instance:
ssh -i ~/.ssh/id_rsa ubuntu@<PUBLIC_IP>

Default username for Ubuntu: ubuntu
📊 Outputs (outputs.tf)
After terraform apply, Terraform prints:

Output	Description
instance_id	EC2 instance ID
public_ip	Public IP for SSH
private_ip	Private IP inside VPC
🛡 Security

SSH access restricted to CIDR specified in allowed_ssh_cidr
HTTP access restricted to allowed_http_cidr
Terraform state and SSH keys ignored in .gitignore

🧑‍💻 Author

Dhirendra Singh
