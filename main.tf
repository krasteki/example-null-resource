terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}

variable "execution" {
  default = "Hello"

}
resource "null_resource" "VM-01" {
  provisioner "local-exec" {
    command = "echo ${var.execution}"
  }
}

output "out" {
  value = var.execution
}

output "id" {
  value = null_resource.VM-01.id
}