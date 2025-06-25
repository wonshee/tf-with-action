variable "s3_bucket_name" {
  description = "S3 버킷 이름 (고유해야 함)"
  type        = string
}

variable "s3_bucket_name_tag" {
  description = "S3 버킷 태그의 Name 값"
  type        = string
  default     = "terraform test"
}
