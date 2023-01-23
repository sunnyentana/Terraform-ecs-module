 resource "aws_cloudwatch_log_group" "bhub_cw_log_group" {
   name = "/ecs/${var.ecs_service_name}"

   tags = {
     Environment = "dev"
     Application = "${var.ecs_service_name}"
   }
 }