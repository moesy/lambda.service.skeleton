variable "payload_path" {
  default = "lambda/package.zip"
}

variable "function_name" {
  default = "Service Name"
}

variable "function_description" {
  default = "Service description"
}

variable "function_timeout" {
  default = 10
}

variable "handler" {
  default = "app/main.handler"
}
