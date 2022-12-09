terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 3.2"
    }
  }
  backend "s3" {
  }
}

provider "aws" {
  region = var.aws_region
}