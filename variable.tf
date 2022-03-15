variable "accesskey" {
   type = string
   default = ""
}

variable "secretkey" {
   type = string
   default = ""
}

variable "awsprops" {
   type = map
   default = {
   region = "us-east-1"
   ami = "ami-0e1d30f2c40c4c701"
   instance_type = "t2.micro"
   publicip = true
   }
}
