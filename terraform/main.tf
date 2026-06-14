resource "aws_instance" "web" {

  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  key_name = "my-key"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("../scripts/install_docker.sh")

  tags = {
    Name = "DevOps-Project"
  }
}