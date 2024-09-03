resource "aws_s3_bucket_acl" "rm_cicd_bucket_acl" {
  acl                   = null
  bucket                = "rm-cicd"
  expected_bucket_owner = null
  access_control_policy {
    grant {
      permission = "FULL_CONTROL"
      grantee {
        email_address = null
        id            = "9c9eee42bd72992fc808fb24bd09e1b568da25972769491c4d646d3aa8e154dd"
        type          = "CanonicalUser"
        uri           = null
      }
    }
    owner {
      display_name = null
      id           = "9c9eee42bd72992fc808fb24bd09e1b568da25972769491c4d646d3aa8e154dd"
    }
  }
}


resource "aws_s3_bucket_public_access_block" "rm_cicd_bucket_access" {
  block_public_acls       = false
  block_public_policy     = false
  bucket                  = "rm-cicd"
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "rm_cicd_bucket_policy" {
  bucket = "rm-cicd"
  policy = jsonencode({
    Statement = [{
      Action    = "s3:GetObject"
      Effect    = "Allow"
      Principal = "*"
      Resource  = "arn:aws:s3:::rm-cicd/*"
      Sid       = "PublicReadGetObject"
    }]
    Version = "2012-10-17"
  })
}

resource "aws_s3_bucket_ownership_controls" "rm_cicd_bucket_ownership" {
  bucket = "rm-cicd"
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_website_configuration" "rm_cicd_bucket_website_configuration" {
  bucket                = "rm-cicd"
  expected_bucket_owner = null
  routing_rules         = null
  index_document {
    suffix = "index.html"
  }
}



resource "aws_s3_bucket" "rm_cicd_bucket" {
  bucket              = "rm-cicd"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {}
  tags_all            = {}
}
