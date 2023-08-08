# configured aws provider with proper credentials
provider "aws" {
  region  = var.aws_region
  profile = var.profile
}


# launch the jenkins instance using ami : you can change this ami id with your own ami. 
resource "aws_instance" "jenkins_ec2_instance" {
  ami                    = var.jenkins_ami
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.jenkins_security_gp.id]
  key_name               = aws_key_pair.instance_key.key_name

  tags = {
    Name  = "jenkins-server"
    Owner = "Hermann90"
  }
}




