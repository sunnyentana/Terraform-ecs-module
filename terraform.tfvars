cluster_name = "entana-stage"
publicly_accessible = true
# cluster_arn= "arn:aws:ecs:us-east-1:597544333513:cluster/bhub-frontend-dev" 
# log_name = "poc_log"
containers={

    container1={

        # cluster_name = "bhub-frontend-dev"
        ecs_desired_count = 1
        image_name = "httpd"
        container_name = "342214740201.dkr.ecr.us-east-1.amazonaws.com/entana_backend_rest" 
        ecs_service_name = "entana-backend-service"
      #  container_definition_file = "container_definations.json"
        alb_name = "entana-backend-alb"
        internal = true
        cert_arn = "arn:aws:acm:us-east-1:727085843824:certificate/f90c85e2-8f15-4edf-a01e-f29724f5c0fc"
        /* repository_name = "entana-backend" */
        
        container_port=80
        # cluster_count=true
        # family_name = "poc-frontend-dev"
        envs = [ 
          {name: "PORT" , value: "4000"}
          ]

     }
     container2={

        # cluster_name = "bhub-frontend-dev"
        ecs_desired_count = 1
        image_name = "nginx"
        container_name = "342214740201.dkr.ecr.us-east-1.amazonaws.com/entana_grapgql_dev_app" 
        ecs_service_name = "entana-graphql-service"
      #  container_definition_file = "container_definations.json"
        alb_name = "entana-graphql-alb"
        internal = false
        cert_arn = "arn:aws:acm:us-east-1:727085843824:certificate/f90c85e2-8f15-4edf-a01e-f29724f5c0fc"
        /* repository_name = "graphql" */
        
        container_port=80
        # cluster_count=false
        # family_name = "poc-frontend-dev"
        envs = [ 
          {name: "PORT" , value: "3030"},
          ]
     }
   
    
}   
