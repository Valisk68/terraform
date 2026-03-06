variable "ingress_rules"{
    default =[
       {
        port = 22
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allowing port number 22 for SSH access"

       },

       {
        port = 3306
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allowing port number 3306 for MySQL access"

       },

       {
        port = 443
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allowing port number 443 for HTTPS access"

       }
    ]
}