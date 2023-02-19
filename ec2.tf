resource "aws_instance" "web" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  key_name = "threetier"
  subnet_id = aws_subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = "true"
  count = 2 


  tags = {
    Name = "Web Server"
  }

  provisioner "file" {
    source = "./threetier.pem"
    destination = "/home/ec2-user/threetier.pem"

    connection {
        type = "ssh"
        host = self.public_ip
        user = "ec2-user"
        private_key = "${file("./threetier.pem")}"
    }
  }   
}

resource "aws_instance" "database" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  key_name = "threetier"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "Database Server"
  }

}

