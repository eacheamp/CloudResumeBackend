terraform {
  backend "s3" {
    bucket  = "eacheampongterraform"
    key     = "cloudresume.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}