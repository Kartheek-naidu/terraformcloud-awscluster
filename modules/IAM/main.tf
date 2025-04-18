resource "aws_iam_user" "user" {
  name = var.user_name
}
resource "aws_iam_group" "group" {
  name = var.group_name
}


resource "aws_iam_user_group_membership" "user_group_membership" {
  user = aws_iam_user.user.name
  groups = [aws_iam_group.group.name]
}

resource "aws_iam_group_policy_attachment" "group_policy" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess" # Example
}
