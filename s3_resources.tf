module "S3_bucket_1" {
  source                = "./modules/s3/"
  count                 = "${(var.aws-account == "prod" || var.aws-account == "beta") ? 1 : 0}"
  bucketname            = "${var.bucket_name_1}"
  versioning-enabled    = "true"
  lifecycle_rule        = "${var.lifecycle_rule_bucket_1}"
  aws_account           = "${var.aws-account}"
}

module "S3_bucket_2" {
  source                = "./modules/s3/"
  count                 = "${(var.aws-account == "dev" || var.aws-account == "prod") ? 1 : 0}"
  bucketname            = "${var.bucket_name_2}"
  versioning-enabled    = "true"
  lifecycle_rule        = "${var.lifecycle_rule_bucket_2}"
  aws_account           = "${var.aws-account}"
}

module "S3_bucket_3" {
  source                = "./modules/s3/"
  count                 = "${var.aws-account == "beta" ? 0 : 1}"
  bucketname            = "${var.bucket_name_3}"
  versioning-enabled    = "true"
  lifecycle_rule        = "${var.lifecycle_rule_bucket_3}"
  aws_account           = "${var.aws-account}"
}
