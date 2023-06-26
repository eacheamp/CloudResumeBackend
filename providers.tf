terraform {
  required_version = ">=1.4.1"
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = ">=3.75.1"
      }
      cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
      }
      archive = {
        source  = "hashicorp/archive"
        version = "~>2.0.0"
      }
    }
}

terraform {
  backend "s3" {
    bucket  = "eacheampongterraform"
    key     = "cloud_resume"
    region  = "us-east-1"
    profile = "default"
  }
}

# Configure the AWS Provider
provider "aws" {
  region                    = "us-east-1"
}


