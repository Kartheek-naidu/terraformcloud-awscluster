output "iam_groups_map" {
  value = {
    for k, mod in module.iam_groups : k => mod.group_name
  }
}