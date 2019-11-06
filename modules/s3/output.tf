output "arns" {
  description = "List of AWS S3 Bucket ARNs"
  value       = "${aws_s3_bucket.s3-bucket.*.arn}"
}

output "ids" {
  description = "List of AWS S3 Bucket IDs"
  value       = "${aws_s3_bucket.s3-bucket.*.id}"
}

output "regions" {
  description = "List of AWS S3 Bucket Regions"
  value       = "${aws_s3_bucket.s3-bucket.*.region}"
}
