variable "count"              { default = 1 }
variable "bucketname"         { default = "" }
variable "bucket_acl"         { default = "private" }
variable "versioning-enabled" { default = "false" }
variable "region"             { default = "us-east-1" }
variable "aws-account"        { default = "dev" }
variable "component"          { default = "Storage" }
variable "owner"              { default = "Company" }
variable "version"            { default = "1.0" }

variable "bucket_name_1"      { default = "d-shan-bucket1" }
variable "bucket_name_2"      { default = "d-shan-bucket2" }
variable "bucket_name_3"      { default = "d-shan-bucket3" }

variable "lifecycle_rule" {
  default = []
}

variable "lifecycle_rule_bucket_1" {
  default = []
}

variable "lifecycle_rule_bucket_2" {
  default = []
}

variable "lifecycle_rule_bucket_3" {
  default = []
}
