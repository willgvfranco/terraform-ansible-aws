resource "aws_security_group" "grupo_de_seguranca" {
  name        = "grupo_de_seguranca"
  description = "Grupo de Seguranca para o Servidor de Aplicacao"
  #   vpc_id      = aws_vpc.vpc.id

  ingress {
    ipv6_cidr_blocks = ["::/0"]
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  egress {
    ipv6_cidr_blocks = ["::/0"]
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  tags = {
    Name = "Acesso Geral"
  }
}
