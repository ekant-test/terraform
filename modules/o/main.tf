# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Create root organization
#
provider "aws" {
  region = var.m_region
}

# --- root and master ----------------------------------------------------------


resource "aws_organizations_organization" "root" {
aws_service_access_principals = [
  "sso.amazonaws.com",
  "tagpolicies.tag.amazonaws.com",
  "cloudtrail.amazonaws.com",
  "config.amazonaws.com",
  "config-multiaccountsetup.amazonaws.com",
  "aws-artifact-account-sync.amazonaws.com",
  "ds.amazonaws.com",
  "fms.amazonaws.com",
  "ssm.amazonaws.com",
  "ram.amazonaws.com"
]

  enabled_policy_types = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY"
  ]

  feature_set = "ALL"
}
