resource "aws_s3_bucket" "rm_cicd" {
  bucket              = "rm-cicd"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {}
  tags_all            = {}
}

resource "aws_s3_bucket_website_configuration" "rm_cicd" {
  bucket                = "rm-cicd"
  expected_bucket_owner = null
  routing_rules         = null
  index_document {
    suffix = "index.html"
  }
}
