provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-004b55e42abbde35f"  # ubuntu
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstTerraformEC2"
  }
}

