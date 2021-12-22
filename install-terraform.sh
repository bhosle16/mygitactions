#!/bin/bash

#-----------------------------------------------------------------------------------------------------
#   File Name       : install-terraform
#   Description     : script to setup the terraform on cnetos.
#-----------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------
# Function Name   : install_terraform
# Purpose         : function install the tum-utils package and the terraform.
#-----------------------------------------------------------------------------------------------------

install_terraform()
{
	##Install yum-utils package
	yum install -y yum-utils

	##Install Terraform
	yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
	yum -y install terraform
	
	##Confirm Terraform Installation
	terraform  version
}

#-----------------------------------------------------------------------------------------------------
# Function Name   : main
# Purpose         : Main function of the script.
#-----------------------------------------------------------------------------------------------------

main()
{
	install_terraform
}

#-----------------------------------------------------------------------------------------------------
# Calling of 'main' function.
#-----------------------------------------------------------------------------------------------------

main
