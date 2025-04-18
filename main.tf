provider "aws" {
  region = "us-east-1"
}

module "iam_groups" {
  source     = "./modules/iam"
  for_each   = toset(var.group_names)
  group_name = each.key
  role_name  = "role-for-${each.key}"
}
