resource "aws_instance" "instance1" {
  ami = "ami-04e5276ebb8451442"
  instance_type = var.instance_type #AWS solo nos permite utilizar esta
  subnet_id = var.subnet_id #acceder a la primera subnet que se creo 
  tags = {
    Name = var.instance_name
  }
}