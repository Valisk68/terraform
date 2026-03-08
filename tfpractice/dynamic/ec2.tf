resource "aws_instance" "terraform_ec2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_tls.id]
    tags = {
    Name = "dynamic-test"
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

            # Here we are using dynamic block to create multiple ingress rules based on the variable "ingress_rules" which is defined in variables.tf file.
           dynamic "ingress" {
                for_each = var.ingress_rules
                content {
                     from_port = ingress.value.port
                     to_port = ingress.value.port
                     protocol = "tcp"
                     cidr_blocks = ingress.value.cidr_blocks
                     ipv6_cidr_blocks = ["::/0"]
                     description = ingress.value.description
                }

           }
    
       tags = {
                Name = "allow_all_tls"
            }

}
