resource "aws_instance" "nginx1" {
  ami = "ami-0eb260c4d5475b901"
  instance_type = "t2.micro"
  availability_zone = "eu-west-2a"
  key_name = "BEBS"
  vpc_security_group_ids = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id, aws_security_group.allow_http.id]
  subnet_id = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  tags = {
	Name = "NginxPub1"
	}
}

resource "aws_instance" "nginx2" {
  ami = "ami-0eb260c4d5475b901"
  instance_type = "t2.micro"
  availability_zone = "eu-west-2b"
  key_name = "BEBS"
  vpc_security_group_ids = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id, aws_security_group.allow_http.id]
  subnet_id = module.vpc.public_subnets[1]
  associate_public_ip_address = true
  tags = {
	Name = "NginxPub2"
	}
}

resource "aws_instance" "nginx3" {
  ami = "ami-0eb260c4d5475b901"
  instance_type = "t2.micro"
  availability_zone = "eu-west-2c"
  key_name = "BEBS"
  vpc_security_group_ids = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id, aws_security_group.allow_http.id]
  subnet_id = module.vpc.private_subnets[2]

  tags = {
        Name = "NginxPriv"
        }
}
