provider "aws" {
  region  = "ap-southeast-2"
  profile = "mahesh"

}

terraform {
  backend "s3" {
    bucket  = "aws-mahesh-bucket-922231562522-ap-southeast-2-an"
    region  = "ap-southeast-2"
    key     = "backend/terraform.tfstate"
    profile = "mahesh"

  }
}