variable "instances"{
    type = list
    default = ["mongodb", "rabbbitmq", "mysql", "redies", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

# replace with zone_id and doman_name

variable "zone_id" {
    type = string
    default = "Z092307526FEIBP6HXALH"
}

variable "domain_name" {

    default = "validevops.online"
}


variable "fruites" {
    type = list(string)
    default =["apple", "banana", "apple", "orange"]
}

variable "fruites_set"{
    type = set(string)
    default =["apple", "banana", "apple", "orange"]
}