terraform {
  backend "local" {
    path = "/d/visual-studio-daily-work/AWS/Test1/state.tfstate"
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
     # version = "~>3.49.0"

    }
  }
}
provider "aws" {
   region = "us-east-2"
}

#provider information block END
#plan2 resource block  BEGIN
resource "aws_instance" "plan2" {
  instance_type          = "t2.micro"
  ami                    = "ami-05d8140b845a8aa7b"
}