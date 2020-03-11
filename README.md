This terraform code creates S3 buckets, we can use the same code to provision buckets across multiple environments by using the count variable instead of maintaining different files for different environments.

It is better to save aws credentials in the shared credentials file ($HOME/.aws/credentials/) instead of adding credentials in the aws.tf file under providers section.

usage: ``terraform init
       terraform apply -var-file="var-file.dev"``

Default value of count is 1, so if the count variable isn't specified, bucket will be created. 

We make use of ternary operators to define count variable across environments, for bucket 1, we defined count as 
``count = "${(var.aws-account == "prod" || var.aws-account == "beta") ? 1 : 0}"`` 

so for bucket 1, count=1 for prod and beta and count=0 for all other environments. 

when we run ``terraform apply -var-file="var-file.dev"``, aws-account="dev" in var-file.dev, so count=0, bucket_1 will not be created in dev, only bucket_2 and 3 will be created in dev. 
