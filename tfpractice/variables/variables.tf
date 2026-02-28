variable "ami_id" {
  description = "RHEL 9 for DEVOPS"
  type        = string
  default     = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.micro"
}


variable "ec2_tags" {
    description = "Tags for the EC2 instance"
    type        = map(string)
    default     = {
        Name = "terraform-test"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "sg_name" {    
    type        = string
    default     = "allow-all-terraform-default"   
  
}

variable "sg_description" {
    description = "Description of the security group"
    type        = string
    default     = "Allow all TLS inbound and outbound traffic"

}

variable "sg_from_port" {
    description = "Starting port for security group rule"
    type        = number
    default     = 0
}

variable "sg_to_port" {
    description = "Ending port for security group rule"
    type        = number
    default     = 0
}

variable "cidr_blocks" {
     type = list(string)
     default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    description = "Tags for the security group"
    type        = map(string)
    default     = {
        Name = "allow_all_tls"
        Project = "roboshop"
        Environment = "dev"
    }
}
