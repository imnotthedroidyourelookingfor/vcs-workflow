terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
  # cloud {
  #   organization = "droid-demo-org"
  #   workspaces {
  #     name = "droid-cli-workspace"
  #   }
  # }
}

provider "local" {
  # Configuration options
}

resource "local_file" "tf_file" {
  content  = "\nThis is a CSX ${var.product} workshop test that deploys to ${var.target_env} \n\n"
  filename = "${path.module}/terraform.txt"
}

output "text" {
  value = local_file.tf_file.content
}
