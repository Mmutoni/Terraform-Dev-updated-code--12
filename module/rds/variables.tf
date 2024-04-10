variable "allocated_storage" {
  default = 10
}
variable "identifier" {
  default = "dev-database"
}
variable "password" {
  sensitive = true
}
variable "username" {
  sensitive = true
}
variable "db_name" {
  description = "name of the initial database"
  default = "devdb"
}
variable "instance_class" {
  default = "db.t3.micro"
}
variable "backup_retention_period" {
  description = "how long the backup should take"
  default = 0
}
variable "engine" {
  default = "mysql"
}
variable "engine_version" {
  default = "5.7"
}
variable "parameter_group_name" {
  default = "default.mysql5.7"
}
variable "skip-final_snapshot" {
  default = true
}
variable "region" {
  default = "us-east-1"
}