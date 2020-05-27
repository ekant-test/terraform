# Owner   : cloudops
# Created : 05/21/2020
# Purpose : modules structure
#
# --- list of available modules --- #

#-------------------------- AWS Organization  ----------------------------------
module "o" {
    source = "../modules/o"
}

#-------------------------- AWS Organization Unit ------------------------------
module "ou" {
    source = "../modules/ou"
    o_root_id = module.o.aws_organizations_organization_root
}

#-------------------------- AWS Source code policy -----------------------------
module "scp" {
    source = "../modules/scp"
    ou_security_id = module.ou.aws_organizations_organizational_unit_security
    ou_infrastructure_id = module.ou.aws_organizations_organizational_unit_infrastructure
    ou_pci-workloads_id = module.ou.aws_organizations_organizational_unit_pci-workloads
}

#-------------------------- AWS Tagging Policy ---------------------------------
module "tagging-policy" {
    source = "../modules/tagging-policy""
    ou_security_id = module.ou.aws_organizations_organizational_unit_security
    ou_infrastructure_id = module.ou.aws_organizations_organizational_unit_infrastructure
    ou_pci-workloads_id = module.ou.aws_organizations_organizational_unit_pci-workloads
}

#-------------------------- S3 State Bucket ------------------------------------
module "state-bucket" {
    source = "../modules/state-bucket"
}
#-------------------------- IAM Roles ------------------------------------------

module "roles" {
    source = "../modules/roles"
}
#-------------------------- AWS accounts ---------------------------------------
module "aws-accounts" {
    source = "../modules/aws-accounts"
    ou_security_id = module.ou.aws_organizations_organizational_unit_security
    ou_infrastructure_id = module.ou.aws_organizations_organizational_unit_infrastructure
    ou_pci-workloads_id = module.ou.aws_organizations_organizational_unit_pci-workloads
}
