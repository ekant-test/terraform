variable "m_region" {
  type        = string
  default     = "ap-southeast-2"
  description = "the aws region to operate in"
}

#AWS va-holdings organisation root ID value holder from module
variable "ou_security_id"{
  type = "string"
}
#AWS va-holdings organisation root ID value holder from module
variable "ou_infrastructure_id"{
  type = "string"
}
#AWS va-holdings organisation root ID value holder from module
variable "ou_pci-workloads_id"{
  type = "string"
}
