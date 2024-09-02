resource "aws_s3_bucket" "rm_cicd" {
  bucket              = "rm-cicd"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {}
  tags_all            = {}
}
