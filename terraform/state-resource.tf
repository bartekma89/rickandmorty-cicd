resource "aws_s3_bucket_acl" "rm_cicd_state_bucket_acl" {
  acl                   = null
  bucket                = "rm-cicd-terraform-state-bucket"
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

resource "aws_dynamodb_table" "rm_cicd_state_lock_table" {
  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = false
  hash_key                    = "LockID"
  name                        = "terraform-state-lock"
  range_key                   = null
  read_capacity               = 1
  restore_date_time           = null
  restore_source_name         = null
  restore_to_latest_time      = null
  stream_enabled              = false
  stream_view_type            = null
  table_class                 = "STANDARD"
  tags                        = {}
  tags_all                    = {}
  write_capacity              = 1
  attribute {
    name = "LockID"
    type = "S"
  }
  point_in_time_recovery {
    enabled = false
  }
  ttl {
    attribute_name = ""
    enabled        = false
  }
}

resource "aws_s3_bucket_ownership_controls" "rm_cicd_state_bucket_ownership" {
  bucket = "rm-cicd-terraform-state-bucket"
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "rm_cicd_state_bucket_versioning" {
  bucket                = "rm-cicd-terraform-state-bucket"
  expected_bucket_owner = null
  mfa                   = null
  versioning_configuration {
    mfa_delete = null
    status     = "Enabled"
  }
}

resource "aws_s3_bucket" "rm_cicd_state_bucket" {
  bucket              = "rm-cicd-terraform-state-bucket"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {}
  tags_all            = {}
}
