variable "group_name" {
  type = string
}

variable "role_name" {
  type = string
}
variable "user_name" {
  description = "IAM user name to create and assign to the group"
  type        = string
}
