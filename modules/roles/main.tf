provider "aws" {
  region = var.m_region
}

# this is the role of security  AWS account - don't mess with it

resource "aws_iam_role" "Accounts-Administrator" {
  name = "Accounts-Administrator"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
#
#  tags = {
#    tag-key = "tag-value"
#  }
}
