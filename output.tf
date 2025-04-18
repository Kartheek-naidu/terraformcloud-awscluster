output "iam_groups_created" {
  value = [for group in module.iam_groups : group.group_name]
}
