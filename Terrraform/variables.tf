variable "vpc_name" {

    type = string 
    description = "nombre de la vpc" 

}


variable "instance_name" {
  type = string
  description = "nombre de la instancia"
  default = "Instancia1"
}

#########

variable "vpc_name2" {

    type = string 
    description = "nombre de la vpc 2" 

}

variable "instance_name2" {
  type = string
  description = "nombre de la instancia 2"
  default = "Instancia2"
}


variable "network_name" {

  type = string
  description = "nobre de la red"
  sensitive = true
  
}


variable "instance_type" {
  type=string
  description = "Tipo de instancia a crear"
  default = "t2-nano"
}