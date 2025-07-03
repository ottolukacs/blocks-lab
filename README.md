# 🛡️ blocks-lab Project

## Project Purpose

The goal of this project is to create a cybersecurity lab. In this lab, you can automatically deploy both a server and a victim host as VM instances. The objective is twofold:  
- First, to provide a SIEM server packed with powerful monitoring and management tools, featuring lots of intuitive visualizations.  
- Second, to ensure that this wide functional server can be deployed automatically and quickly on any platform.

At project launch, the supported platform is Ubuntu on AWS, and the SIEM solution is the Wazuh stack.

---

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

### `cyberlab-deployer` directory

The `cyberlab-deployer` directory is where the setup for Wazuh and all its dependencies and configurations happens, mainly using Ansible and Docker Compose.  
*A detailed description is coming soon!*

---