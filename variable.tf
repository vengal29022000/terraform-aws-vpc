variable "project_name" {

}

variable "environment" {

}

variable "common_tags" {
    type = map 

}

variable "igw_tags" {
    default = {}
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
    default = {}
}

variable "enable_dns_hostnames" {
    default = "true"
}

variable "public_subnet_tags" {
    default = {}
}

variable "public_subnets" {
    type = list 
    validation {
        condition = length(var.public_subnets) == 2
        error_message = "please provide 2 valid subnets"

    }
  
}

variable "private_subnets" {
    type = list 
    validation {
        condition = length(var.private_subnets) == 2
        error_message = "please provide 2 valid subnets"

    }
  
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnets" {
    type = list 
    validation {
        condition = length(var.database_subnets) == 2
        error_message = "please provide 2 valid subnets"

    }
  
}

variable "database_subnet_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}
