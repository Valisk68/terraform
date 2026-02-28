resource "aws_instance" "terraform_ec2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_tls.id]
    tags = {
    Name = "terraform-state-demo"
    Project = "roboshop"
  }
}

resource "aws_security_group" "allow_all_tls" {
         name = "allow_all_tls"
            description = "Allow all TLS inbound traffic"

            egress {
                from_port   = 0
                to_port     = 0
                protocol    = "-1"
                cidr_blocks =["0.0.0.0/0"]
                ipv6_cidr_blocks = ["::/0"]

            }
           ingress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
                ipv6_cidr_blocks = ["::/0"]

           }
    
       tags = {
                Name = "allow_all_tls"
            }

}