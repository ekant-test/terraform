variable "m_custom_kms_id" {
  description = "Custom KMS ID"
  default = ""
}

variable "m_sate-bucket" {
  description = "Bucket string"
  default = "state-bucket"
}

variable "m_region" {
    description = "The region in which the bucket will be deployed"
    default = "ap-southeast-2"
}

variable "m_versioning" {
    description = "Select true to enable versioning and false to disable versioning on the bucket."
    default     = false
}

variable "m_env" {
    description = "The bucket's environment (i.e. pr, dv, qa, etc.)"
    default = "sandbox"
}

variable "m_cost_center" {
    description = "Identifier for the ATT BU or fiscal responsibility"
    default     = ""
}

variable "m_customer_id" {
    description = "Identifier for customer id or external fiscal"
    default     = ""
}

variable "m_owner" {
    description = "ATTUID of point of contact"
    default = "va-cloudops"
}

variable "m_project_id" {
    description = ""
    default     = ""
}

variable "m_foundation" {
    description = "Platform automation marker"
    default     = "true"
}
