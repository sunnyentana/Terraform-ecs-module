terraform {
  backend "s3" {
    bucket = "entana-stage-infra"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
