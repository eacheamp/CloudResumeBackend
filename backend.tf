terraform {
  backend "s3" {
    bucket  = "eacheampongterraform"
    key     = "cloud_resume_backend.state"
    region  = "us-east-1"
    profile = "default"
  }
}