# Configure AWS provider
provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "/home/mohan/.aws/creds"
}

# Create an instance with ami-2d39803a
resource "aws_instance" "example" {
  
  count         = 1
  ami           = "ami-2d39803a"
  instance_type = "t2.micro"
#  security_groups = ["${aws_security_group.allow_ssh.id}"]
  key_name = "${aws_key_pair.ansible-gogs.key_name}"


  provisioner "local-exec" {
    command = "echo ${self.public_ip} > pupip.txt"
  }
	 
  tags {
    Name = "terraform-example"
  }
}

