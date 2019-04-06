provider "aws" {
  region = "${var.aws-region}"
}

# Define the security group for public subnet
resource "aws_security_group" "minus-et-cortex-sg-bastion" {
  name = "VPC Bastion"
  description = "Allow incoming SSH access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  vpc_id="${var.aws-vpc-id}"

  tags {
    Name = "SG Bastion"
  }
}