
output "aws_organizations_organizational_unit_va-holdings" {
  value = "${aws_organizations_organizational_unit.va-holdings.id}"
}

output "aws_organizations_organizational_unit_pci-master" {
  value = "${aws_organizations_organizational_unit.pci-master.id}"
}

output "aws_organizations_organizational_unit_security" {
  value = "${aws_organizations_organizational_unit.security.id}"
}

output "aws_organizations_organizational_unit_infrastructure" {
  value = "${aws_organizations_organizational_unit.infrastructure.id}"
}

output "aws_organizations_organizational_unit_pci-workloads" {
  value = "${aws_organizations_organizational_unit.pci-workloads.id}"
}
