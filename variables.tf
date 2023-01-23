# variable "cluster_name" {} 
# variable "container_name" {} 
# variable "ecs_service_name" {} 
# variable "container_definition_file" {} 

variable "containers" {
  type = map
}
variable "vpc_id" {}
variable "pub_subnet_ids" {}
variable "priv_subnet_ids" {}
variable "cluster_name" {}
# variable "log_name" {}