resource "aws_security_group" "Sbx-Public-SSH" {
  vpc_id = "${aws_vpc.SandboxLab.id}"
  name = "Sbx-Public-SSH"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
tags {
    Name = "Sbx-Public-SSH"
  }
}
