# Terraform-ECS-module 
Terraform module to deploy AWS ECR to ECS

# Core Components

## AWS

_The AWS infrastructure is setup using terraform in the ./terraform._

_The following components are deployed:_

1. Application Load Balancer 
2. ECS Cluster / ECS Service 
3. security groups

# Inputs

***

|Name              |Description                                          |Type   |Default|
|------------------|-----------------------                              |-------|-------|
|container_name    |Name of your container                               |string |""     |
|ecs_service_name  |Name of the service                                  |string |""     |
|abl_name          |Name of your Load Balancer                           |string |""     |
|container_port    |Port on which it is going to be exposed              |number |       |
|internal          |For making Load balancer internal or internet facing |bool   |false  |
|ecs_desired_count |count of the task by your service at a moment        |number |1      |

# Outputs

***

|Name              |Description                        |                                    
|------------------|-----------------------            |                
|container_name    |Name that identifies the container |                   
|cluster_arn       |ARN that identifies the cluster    |                                                 









