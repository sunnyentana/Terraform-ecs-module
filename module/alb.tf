# resource "aws_lb_target_group" "ecs-lb-target" {
#   name = "ecs-lb-target-group"
#   port = 80
#   protocol = "HTTP"
#   target_type = "ip"
#   vpc_id = module.vpc.vpc_id
# }

  module "alb" {
    source = "terraform-aws-modules/alb/aws"
    name = var.abl_name
    load_balancer_type = "application"

    vpc_id = var.vpc_id
    subnets = var.pub_subnet_ids
    security_groups = [module.alb-sg.security_group_id]
    # depends_on = [aws_cloudwatch_log_group.bhub_cw_log_group]
    
    target_groups = [
      {
          name_prefix = "target"
          backend_protocol = "HTTP"
          backend_port = 80
          target_type = "ip"
      }
    ]

    http_tcp_listeners = [
      {
          port = 80
          protocol = "HTTP"
          target_group_index = 0
      }
    ]
  }