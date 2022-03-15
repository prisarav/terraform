provider "aws" {
   access_key = var.accesskey
   secret_key = var.secretkey
   region = lookup (var.awsprops, "region")
}

resource "aws_instance" "test" {
   ami = lookup (var.awsprops, "ami")
   instance_type = lookup (var.awsprops, "instance_type")
   associate_public_ip_address = lookup (var.awsprops, "publicip")
   
   tags = {
   Name = "Terraform-ec2"
   }
}

output "ec2instance" {
   value = aws_instance.test.public_ip
}
