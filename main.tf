terraform {
  cloud {
    organization = "swethamothe"

    workspaces {
      name = "Development"
    }
  }
}

provider "aws" {
	region  = local.workspace["vpc_region"]
}

module "ec2vpc" {
    source = ".//modules"

      vpc_region  = local.workspace["vpc_region"]
      env_name = local.workspace["env_name"]
      project_name  = local.workspace["project_name"]
      ami = local.workspace["ami"]
      vpc = local.workspace["vpc"]
      subnet = local.workspace["subnet"]
      instance_type = local.workspace["instance_type"]
}
