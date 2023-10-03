module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"
}
provider "aws" {
	region = "eu-west-2"
}
