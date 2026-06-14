terraform {

  backend "s3" {

    bucket         = "akash-terraform-state-2026"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"

    encrypt = true
  }
}