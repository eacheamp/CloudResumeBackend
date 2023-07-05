terraform {
  backend "s3" {
    bucket  = "eacheampongterraform"
    key     = "cloud_resume"
    region  = "us-east-1"
    profile = "default"
  }
}