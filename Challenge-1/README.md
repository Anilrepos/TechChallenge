---
Title: Create resources on Azure cloud environment to setup a 3-tier environment using terraform.
---

 ## We are going to create following Azure Resources
- azurerm resource group
- remote statefile in azure storage container
- azurerm virtual network
- azurerm subnet and nsg rules for web,app,db,linuxvm
- azurerm public ip
- azurerm network interface
- azurerm network security group
- azurerm network interface security group association
- azurerm network security rule
- azurerm linux virtual machine
- Terraform Outputs for above listed Azured Resources 

# Terraform commands
# Terraform Validate
terraform validate

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply