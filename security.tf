# Creat security group to allow incoming traffic
resource "aws_security_group" "allow_ssh" {
  name = "Asllow ssh connection on port 22"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

