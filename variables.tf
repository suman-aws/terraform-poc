variable "location" {
  default = "ap-south-1"
}
variable "vpc_id" {
  type = string
}
variable "subnet_ids" {
  type = list
}
