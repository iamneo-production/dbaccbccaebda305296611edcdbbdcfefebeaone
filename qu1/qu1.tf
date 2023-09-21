terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws" 
            version = "~>4.0"
        }
    }
} 
provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2NMMEGGPJP5ZLD7T" 
    secret_key = "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" 
} 

resource "aws_instance" "linux_server" {
    ami = "ami-0d52744d6551d851e"
    instance_type = "t2.micro"
} 

output "public_ip" {
    value = aws_instance.linux_server.public_ip 
}