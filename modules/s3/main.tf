resource "aws_s3_bucket" "s3-bucket" {
  bucket         = "${var.bucketname}"
  acl            = "${var.bucket_acl}"
  versioning {
     enabled     = "${var.versioning-enabled}"
  }

tags = {
  Name           = "${var.bucketname}"
  Region         = "${var.region}"
  Environment    = "${var.aws_account}"
  Component      = "${var.component}"
  Owner          = "${var.owner}"
  Version        = "${var.version}"
}
  lifecycle_rule =  "${var.lifecycle_rule}"
  count          =  "${var.count}"
}
