module "ecs-bhub" {
    source = "./module"
    depends_on=[ aws_ecs_cluster.bhub_cluster ]
    for_each = var.containers
    container_name = each.value.container_name
    ecs_service_name = each.value.ecs_service_name 
    abl_name = each.value.abl_name
    ecs_desired_count= each.value.ecs_desired_count
    container_port = each.value.container_port
    
    vpc_id = var.vpc_id
    pub_subnet_ids = var.pub_subnet_ids
    priv_subnet_ids = var.priv_subnet_ids
   cluster_arn = aws_ecs_cluster.bhub_cluster.id
   # family_name = each.value.family_name

}

 resource "aws_ecs_cluster" "bhub_cluster" {
   name = var.cluster_name
}