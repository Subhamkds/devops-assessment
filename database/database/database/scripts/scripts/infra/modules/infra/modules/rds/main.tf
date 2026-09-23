resource "aws_db_instance" "database" {
  identifier        = "hotel-database"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  db_name  = "hotel"
  username = "admin"
  password = "password"

  backup_retention_period = 1
  skip_final_snapshot     = true
}
