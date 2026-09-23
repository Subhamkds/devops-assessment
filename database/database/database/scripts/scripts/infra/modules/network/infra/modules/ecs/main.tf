resource "aws_ecs_cluster" "main" {
  name = "hotel-cluster"
}

resource "aws_ecs_task_definition" "app" {
  family                   = "hotel-app"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name  = "app"
      image = "nginx:latest"

      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}
