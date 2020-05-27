output "aws_organizations_organization_root" {
  value = "${aws_organizations_organization.root.roots[0].id}"
}
