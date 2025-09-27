resource "aws_instance" "app" {
  ami                    = var.ami_id 
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = "key_mumbai"

  user_data = file("${path.module}/userdata.sh")

  tags = merge(var.tags, { Name = "${var.env}-ec2" })
}
