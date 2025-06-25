terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-20250625032048326100000001"
    key            = "terraform/state-test/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = ""
  }
}

provider "aws" {
  region = "ap-northeast-2"
}
