//generico
//creamos una vpc, ip provada
resource "aws_vpc" "vpc" {

    cidr_block = "10.0.0.0/16" #segmento de la red
    instance_tenancy = "default"
    tags = { #nombre de la vpc y variables
      Name = var.vpc_name
    }

  
}


//creamos una subnet, crea 1
resource "aws_subnet" "subnet" {
   #Recursos
   count = 1
   #la subnet puede ser un arreglo
   vpc_id = aws_vpc.vpc.id
   #main , es el recurso con el terraform sabe que se hacer, eliminar o crear
   cidr_block = aws_vpc.vpc.cidr_block
}