# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Sample resource to create O & OU
#
provider "aws" {
  region = var.m_region
}

# --- setup state buckets in s3----------------------------------------------------------


resource "aws_s3_bucket" "bucket" {
    bucket = "${var.m_env}-${var.m_sate-bucket}-${var.m_owner}"
    region = var.m_region
    versioning {
        enabled = var.m_versioning
    }
    tags  = {
        Name           = "${var.m_env}-${var.m_sate-bucket}-${var.m_region}"
    Costcenter         = var.m_cost_center
    Customerid         = var.m_customer_id
    Environment        = var.m_env
    Owner              = var.m_owner
    Projectid          = var.m_project_id
    Foundation         = var.m_foundation
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "aws:kms"
                kms_master_key_id  = var.m_custom_kms_id
            }
        }
    }
}
