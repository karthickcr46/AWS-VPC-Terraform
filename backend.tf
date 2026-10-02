terraform {
  backend "s3" {
    bucket         = "powertool2027"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true 
  }
}
