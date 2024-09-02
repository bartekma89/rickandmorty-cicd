resource "aws_s3_bucket" "ofe_test_bucket" {
  bucket = "ofe-test-bucket-3258"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "ofe_test_bucket_website_configuration" {
  bucket = aws_s3_bucket.ofe_test_bucket.id

  index_document {
    suffix = "index.html"
  }

}
