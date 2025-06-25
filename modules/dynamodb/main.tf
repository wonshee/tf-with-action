resource "aws_dynamodb_table" "terraform-backend-lock" {
  name         = "dbdbdeep"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Purpose     = "terraform-state-lock"
  }
}