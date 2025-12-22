provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami                    = "ami-03f4878755434977f"
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "${var.project_name}-web"
    Tier = "web"
  }
}

resource "aws_instance" "app" {
  ami                    = "ami-03f4878755434977f"
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "${var.project_name}-app"
    Tier = "app"
  }
}

resource "aws_instance" "db" {
  ami                    = "ami-03f4878755434977f"
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  tags = {
    Name = "${var.project_name}-db"
    Tier = "database"
  }
}
