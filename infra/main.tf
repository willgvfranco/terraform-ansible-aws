terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.regiao_aws
  profile = "default"
}

resource "aws_instance" "app_server" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = var.instancia
  key_name      = var.chave
  # user_data     = <<-EOF
  #                   #!/bin/bash
  #                   cd /home/ubuntu
  #                   echo "<h1>Made with Terraform" > index.html
  #                   nohup busybox httpd -f -p 8080 &
  #                   EOF
  tags = {
    Name = "Iac-Instance-2"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name   = var.chave
  public_key = file("${var.chave}.pub")
}
