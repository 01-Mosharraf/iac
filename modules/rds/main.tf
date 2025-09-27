resource "aws_db_instance" "Assignment" {
  identifier        = "${var.env}-db"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  username          = var.username
  password          = var.password
  db_subnet_group_name = var.db_subnet_group
  vpc_security_group_ids = [var.sg_id]
  skip_final_snapshot = true

  tags = merge(var.tags, { Name = "${var.env}-rds" })
}
