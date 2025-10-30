output "vpc_id" {
    value = aws_vpc.main.id
}

output "azs_info" {
    value = data.aws_availability_zones.avaialble
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "public_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
    value = aws_subnet.private[*].id
}

