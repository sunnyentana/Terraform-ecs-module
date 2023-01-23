vpc_id = "vpc-00c64060b3ce325fb"
pub_subnet_ids = ["subnet-0c3f8f6c0ab751452","subnet-0d88ccc1ef1c546a8","subnet-0315254f89b69b4c7"]
priv_subnet_ids= ["subnet-03834cfd9c6c45f70","subnet-03d282acf75f02722","subnet-055634ea4ba607d4e"]
cluster_name = "poc-frontend-dev"
# cluster_arn= "arn:aws:ecs:us-east-1:597544333513:cluster/example-frontend-dev" 
# log_name = "poc_log"
containers={

    container1={

        # cluster_name = "example-frontend-dev"
        ecs_desired_count = 1
        image_name = "nginx"
        container_name = "nginx" 
        ecs_service_name = "example-frontend-ecs-service"
      #  container_definition_file = "container_definations.json"
        abl_name = "example-frontend-ecs"
        internal = true
        container_port=80
        # cluster_count=true
        # family_name = "poc-frontend-dev"
        env = [
          {name: "Example", value: "test"},
          {name: "Example2", value: "test2"}
        ]
     }
     container2={

        # cluster_name = "example-frontend-dev"
        ecs_desired_count = 1
        container_name = "nginx" 
        ecs_service_name = "example-frontend-ecs-service-poc"
      #  container_definition_file = "container_definations.json"
        abl_name = "example-frontend-ecs-poc"
        internal = false
        container_port=80
        # cluster_count=false
        # family_name = "poc-frontend-dev"
        env = [
          {name: "Example", value: "test"}
        ]
     }
   
    
}   