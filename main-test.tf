terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "-> 3.27"        
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource ""aws_s3_bucket" "fake-company-bucket" {
  bucket = "fake-product-assets"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true

    noncurrent_version_expiration {
      days = 14
    }
  }  
}

resource "aws_vpc" "fake-product-production" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"
}

resource "aws_subnet" "production" {

}

resource "aws_vpc" "Fake-product-staging" {
  cidr_block       = "10.0.1.0/24"
  instance_tenancy = "default"
}

resource "aws_subnet" "staging" {
    
}
  
