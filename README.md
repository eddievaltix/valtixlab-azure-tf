# Valtix Terraform Azure Labs Example template
This Terraform example template creates a simple lab network consisting of a hub virtual network with 2 spoke vnets with peering between the hub and spokes.  The hub virtual newtwork is preconfigured with mgmt and datapath subnets and network security groups for a Valtix gateway deployment

## How to use:
1. git clone this repo
1. use Azure CLI to login ```az login```
1. use the terraform_tfvars.example files to create a terraform.tfvars file
1. run terraform init, terraform plan, terraform apply
