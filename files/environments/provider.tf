provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Name = "ziyotek-devops-${var.environment}"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "dzmitry-bucket-jenkins2"
    key    = "docs/myfile"
    region = "us-east-1"
  }
}