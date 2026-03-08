output "ami_id" {
  value       = data.aws_ami.joindevops.id
}

output "instance_info" {
    value = data.aws_instance.terraform_test.private_ip
   
}

output "instance_public_ip" {
    value = data.aws_instance.terraform_test.public_ip
   
}