terraform {
  backend "s3" {
    bucket       = "shree-tf-state-faa9b71e"
    key          = "cloudops-devops-project/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
