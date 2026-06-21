locals {
  ami_id = data.aws_ami.ubuntu.id
}

resource "aws_instance" "app_server" {
  ami           = local.ami_id
  instance_type = var.app_server_instance_type

  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = var.app_server_name
  }
}

resource "aws_instance" "db_server" {
  ami           = local.ami_id
  instance_type = var.db_server_instance_type

  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = var.db_server_name
  }
}
