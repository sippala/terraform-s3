variable "lifecycle_rule" {
  description = "lifecycle"
  default = []
}

variable count              { default = 1 }
variable bucketname         {}
variable bucket_acl         { default = "private" }
variable versioning-enabled { default = "false" }
variable region             { default = "us-east-1" }
variable aws_account        { default = "dev" }
variable component          { default = "Storage" }
variable owner              { default = "Company" }
variable version            { default = "1.0" }
