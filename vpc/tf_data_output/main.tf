Arquivo: **main.tf**

provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "amazon2" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Amazon*"]
  }

}


output image_id { 
   value = data.aws_ami.amazon2.id
}