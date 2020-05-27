# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Sample resource to create O & OU
#
provider "aws" {
  region = var.m_region
}


# --- SCP Security----------------------------------------------------------

resource "aws_organizations_policy" "security" {
  name = "${var.m_env}-scp-${var.m_ou_security}"
  type = "SERVICE_CONTROL_POLICY"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": [
				"elasticbeanstalk:*",
				"apigateway:*",
				"rds:*",
				"dynamodb:*",
				"ecs:*",
				"ecr:*",
        "aws-portal:*",
        "codebuild:*",
        "cloudformation:*",
        "codecommit:*",
        "codedeploy:*",
        "codepipeline:*",
        "codestar:*"
			],
    "Resource": "*"
  }
}
CONTENT
}

# --- SCP Security Policy Attachment----------------------------------------

resource "aws_organizations_policy_attachment" "security" {
  policy_id = aws_organizations_policy.security.id
  target_id = aws_organizations_organizational_unit.security.id
}

# --- SCP Infrastructure----------------------------------------------------------

resource "aws_organizations_policy" "infrastructure" {
  name = "${var.m_env}-scp-${var.m_ou_infrastructure}"
  type = "SERVICE_CONTROL_POLICY"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": [
				"elasticbeanstalk:*",
				"apigateway:*",
				"rds:*",
				"dynamodb:*",
        "aws-portal:*",
        "codebuild:*",
        "cloudformation:*",
        "codecommit:*",
        "codedeploy:*",
        "codepipeline:*",
        "codestar:*"
			],
    "Resource": "*"
  }
}
CONTENT
}

# --- SCP Infrastructure Policy Attachment----------------------------------------

resource "aws_organizations_policy_attachment" "infrastructure" {
  policy_id = aws_organizations_policy.infrastructure.id
  target_id = aws_organizations_organizational_unit.infrastructure.id
}

# ---SCP PCI Workload----------------------------------------------------------

resource "aws_organizations_policy" "pci-workload" {
  name = "${var.m_env}-scp-${var.m_ou_pci_workloads}"
  type = "SERVICE_CONTROL_POLICY"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": [
				"elasticbeanstalk:*",
        "aws-portal:*",
        "codebuild:*",
        "cloudformation:*",
        "codecommit:*",
        "codedeploy:*",
        "codepipeline:*",
        "codestar:*"
			],
    "Resource": "*"
  }
}
CONTENT
}

# --- SCP PCI Workload Policy Attachment----------------------------------------

resource "aws_organizations_policy_attachment" "pci-workloads" {
  policy_id = aws_organizations_policy.pci-workload.id
  target_id = aws_organizations_organizational_unit.pci-workloads.id
}
