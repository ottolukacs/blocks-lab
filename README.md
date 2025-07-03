# 🛡️ Cybersecurity Lab Project

## Project Purpose

The goal of this project is to create a cybersecurity lab. In this lab, you can automatically deploy both a server and a victim host as VM instances. The objective is twofold:  
- First, to provide a SIEM server packed with powerful monitoring and management tools, featuring lots of intuitive visualizations.  
- Second, to ensure that this functional server can be deployed as automatically and quickly as possible on any platform.

At project launch, the supported platform is Ubuntu on AWS, and the SIEM solution is the Wazuh stack.

---

## 📁 Directory Overview

The `iac` directory contains Infrastructure as Code files for Terraform:

- **Provider.tf** – Sets the AWS provider, enabling Terraform to connect to your AWS account.
- **vars.tf** – Contains variable definitions, like region, instance type, and other customizable settings.
- **blocks-srv.tf** – Defines the main Ubuntu EC2 instance resource (the “lab server”) and its configuration.
- **victim-host.tf** – *(Optional)* Defines an additional EC2 instance, useful for attack/defense scenarios or multi-host labs.
- **SecGrp.tf** – Configures security groups (firewall rules) for your instances.
- **Keypair.tf** – Manages the SSH key pair for accessing your EC2 instances.
- **jumpstart.sh** – A helper shell script to deploy Ansible for the next setup steps in the lab.

---

## ⚙️ Wazuh Stack Setup

The `cyberlab-deployer` directory is where the setup for Wazuh and all its dependencies and configurations happens, mainly using Ansible and Docker Compose.  
*A detailed description is coming soon!*

---