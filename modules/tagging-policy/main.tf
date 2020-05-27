# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Sample resource to create O & OU
#
provider "aws" {
  region = var.m_region
}

# --- define a simple tagging policy----------------------------------------


# define a simple tagging policy
resource "aws_organizations_policy" "base_tags" {
  name        = "${var.m_env}-tagging-${var.m_ou_pci_workloads}"
  description = "a basic tagging policy"
  type        = "TAG_POLICY"
  content = jsonencode(
  {
      "tags": {
          "service:env": {
              "tag_value": {
                  "@@assign": [
                      "tst",
                      "dev",
                      "prd"
                  ]
              }
          },
          "service:name": {},
          "service:owner": {},
          "billing:costcode": {
              "tag_value": {
                  "@@assign": [
                      "001",
                      "002",
                      "004"
                  ]
              }
          },
          "date/time": {},
          "version": {},
          "ci:job-id": {},
          "ci:pipeline-id": {},
          "git:revision": {},
          "git:url": {},
          "git:branch": {}
      }
    }
  )
}

resource "aws_organizations_policy_attachment" "pci-workloads-tagging" {
  policy_id = aws_organizations_policy.base_tags.id
  target_id = aws_organizations_organizational_unit.pci-workloads.id
}

resource "aws_organizations_policy_attachment" "infrastructure-tagging" {
  policy_id = aws_organizations_policy.base_tags.id
  target_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_policy_attachment" "security-tagging" {
  policy_id = aws_organizations_policy.base_tags.id
  target_id = aws_organizations_organizational_unit.security.id
}
