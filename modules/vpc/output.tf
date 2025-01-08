output "vpc_id" {
    value = aws_vpc.main.id
}

output "private_subnet_01_id" {
  value = aws_subnet.private_subnet_01.id
}

output "private_subnet_02_id" {
  value = aws_subnet.private_subnet_02.id
}

output "public_subnet_01_id" {
  value = aws_subnet.public_subnet_01.id
}

output "public_subnet_02_id" {
  value = aws_subnet.public_subnet_02.id
}