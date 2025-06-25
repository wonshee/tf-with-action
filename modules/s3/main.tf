resource "aws_s3_bucket" "backend-bucket" {
  bucket = "terraform-20250625032048326100000001"

  tags = {
    Name = "terraform test"
  }
}

resource "aws_s3_bucket_versioning" "backend-bucket-versioning" {
  bucket = aws_s3_bucket.backend-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}