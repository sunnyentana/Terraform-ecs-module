# resource "aws_lb_target_group" "ecs-lb-target" {
#   name = "ecs-lb-target-group"
#   port = 80
#   protocol = "HTTP"
#   target_type = "ip"
#   vpc_id = module.vpc.vpc_id
# }
 /* resource "aws_acm_certificate" "cert" {
  domain_name       = "*.dev.entana.net"
  validation_method = "DNS"

  tags = {
    Environment = "dev"
    name = "${var.alb_name}-cert"
  }

  lifecycle {
    create_before_destroy = true
  }
}  */

  module "alb" {
    source = "terraform-aws-modules/alb/aws"
    name = var.alb_name
    load_balancer_type = "application"
    internal = var.internal
    vpc_id = var.vpc_id
    subnets = var.pub_subnet_ids
    security_groups = [module.alb-sg.security_group_id]
    # depends_on = [aws_cloudwatch_log_group.example_cw_log_group]
    
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

    /* https_listeners = [
    {
      port               = 443
      protocol           = "HTTPS"
      certificate_arn    = aws_acm_certificate.cert.arn
      target_group_index = 0
    } 
  /* ] */
  }
