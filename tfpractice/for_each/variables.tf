# variable "instances"{
#     type = map
#     mongodb = "t3.micro"
#     redies = "t3.small"
#     mysql = "t3.medium"
# }


variable "instance_type" {
    type = map
    default = { 
    mongodb = "t3.micro"
    redies = "t3.small"
    mysql = "t3.medium"
}
}