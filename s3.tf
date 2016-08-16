# S3 bucket to hold rancher server api credentials
resource "aws_s3_bucket" "server_credentials_bucket" {

    bucket = "${var.s3_bucket_name}"
    acl = "private"
    force_destroy = true

    tags {
        Name = "${var.server_hostname}"
        ManagedBy = "terraform"
    }

    lifecycle {
        create_before_destroy = true
    }

}
