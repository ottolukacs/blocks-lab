<img src="assets/logo.png" width="150">

## 📁 Directory Overview

### `iac` directory

The `iac` directory contains Infrastructure as Code files for Terraform:

- **Provider.tf** – Sets the AWS provider
- **vars.tf** – Contains variable definitions
- **SecGrp.tf** – Configures security groups on AWS
- **Keypair.tf** – Manages the SSH key pair for accessing the EC2 instances
- **jumpstart.sh** – A helper shell script to deploy Ansible
- **blocks-srv.tf** – Defines the main Ubuntu EC2 instance resource (the lab server) and its configuration
- **victim-host.tf** – *(Optional)* Defines an additional EC2 instance, for attack/defense scenarios

---