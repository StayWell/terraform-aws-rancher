module "this" {
  source             = "../"
  public_subnet_ids  = ["blah"]
  private_subnet_ids = ["blah"]
  vpc_id             = aws_vpc.this.id
  domain             = "this.company.com"
  certificate_arn    = "blah"
  zone_id            = "blah"
}

resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}

provider "aws" {
  region = "us-east-1"
}
