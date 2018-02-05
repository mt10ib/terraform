resource "aws_key_pair" "ansible-gogs" {
  key_name   = "ans-gogs"
  public_key = "${file("/home/mohan/.ssh/ans-gogs.pub")}"
}


