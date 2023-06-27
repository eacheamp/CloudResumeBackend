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

# Configure the AWS Provider
provider "aws" {
  region                    = "us-east-1"
}


