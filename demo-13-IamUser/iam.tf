# group definition
resource "aws_iam_group" "administrators" {
    name = "administrators"
}
resource "aws_iam_policy_attachment" "administrators-attach" {
    name = "administrators-attach"
    groups = ["${aws_iam_group.administrators.name}"]
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
# user
resource "aws_iam_user" "Sbxadmin1" {
    name = "admin1"
}
resource "aws_iam_user" "Sbxadmin2" {
    name = "admin2"
}
resource "aws_iam_group_membership" "administrators-users" {
    name = "administrators-users"
    users = [
        "${aws_iam_user.Sbxadmin1.name}",
        "${aws_iam_user.Sbxadmin2.name}",
    ]
    group = "${aws_iam_group.administrators.name}"
}
