variable "m_region" {
  type        = string
  default     = "ap-southeast-2"
  description = "the aws region to operate in"
}

#AWS root organisation root ID value holder from module
variable "o_root_id"{
  type = "string"
}

variable "m_ou_va_holding" {
  type        = string
  default     = "va-holdings"
  description = "the aws region to operate in"
}
variable "m_ou_pci_master" {
  type        = string
  default     = "pci-master"
  description = "the aws region to operate in"
}
variable "m_ou_security" {
  type        = string
  default     = "security"
  description = "the aws region to operate in"
}
variable "m_ou_infrastructure" {
  type        = string
  default     = "infrastructure"
  description = "the aws region to operate in"
}
variable "m_ou_pci_workloads" {
  type        = string
  default     = "pci-workloads"
  description = "the aws region to operate in"
}
variable "m_env" {
  type        = string
  default     = "sandbox"
  description = "the aws region to operate in"
}
