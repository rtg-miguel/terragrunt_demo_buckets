resource "aws_s3_bucket" "example" {
  for_each = local.configuration
  bucket = each.value.bucket
  tags = each.value.tags
}
