# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Resource to create AWS accounts
#
provider "aws" {
  region = var.m_region
}

# shared-pci-services  AWS account --------------------------------------------------------
resource "aws_organizations_account" "shared-pci-services" {
  name  = "shared-pci-services"
  email = "aws.console+cdesandboxshared-pci-services@virginaustralia.com"
  parent_id = var.other_aws_org_id
  role_name = "Accounts-Administrator"
}

# cde-npr  AWS account --------------------------------------------------------
resource "aws_organizations_account" "cde-npr" {
  name  = "cde-npr"
  email = "aws.console+cdesandboxcde-npr@virginaustralia.com"
  parent_id = var.other_aws_org_id
  role_name = "Accounts-Administrator"
}

# cde-prd  AWS account --------------------------------------------------------
resource "aws_organizations_account" "cde-prd" {
  name  = "cde-prd"
  email = "aws.console+cdesandboxcde-prd@virginaustralia.com"
  parent_id = var.other_aws_org_id
  role_name = "Accounts-Administrator"
}

# it-security  AWS account --------------------------------------------------------
resource "aws_organizations_account" "it-security" {
  name  = "it-security"
  email = "aws.console+cdesandboxit-security@virginaustralia.com"
  parent_id = var.other_aws_org_id
  role_name = "Accounts-Administrator"
}
