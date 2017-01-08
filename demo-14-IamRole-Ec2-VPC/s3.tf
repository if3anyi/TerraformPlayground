resource "aws_s3_bucket" "b" {
    bucket = "udemy-mybucket-c29df1"
    acl = "private"

    tags {
        Name = "udemy-mybucket-c29df1"
    }
}
