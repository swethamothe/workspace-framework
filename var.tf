locals {
  env = {
    default = {
      project_name = "ppb-ott-dev-app-ec2"
    }
    dev = {
      env = 1
      env_name      = "dev"
      project_name  = "ppb-ott-dev-app-ec2" 
      vpc_region = "eu-west-2"
      ami = "ami-0b614a5d911900a9b"
      vpc = "10.12.0.0/16"
      subnet = "10.12.0.0/16"
      instance_type = "t2.micro"
    }
    test = {
      env = 1
      env_name      = "test"
      project_name  = "ppb-ott-test-app-ec2" 
      vpc_region = "eu-west-2"
      ami = "ami-0b614a5d911900a9b"
      vpc = "11.12.0.0/16"
      subnet = "11.12.0.0/16"
      instance_type = "t2.micro"

    }
    prod = {
      env = 1
      env_name      = "prod"
      project_name  = "ppb-ott-prod-app-ec2" 
      vpc_region = "eu-west-2"
      ami = "ami-0b614a5d911900a9b"
      vpc = "12.12.0.0/16"
      subnet = "12.12.0.0/16"
      instance_type = "t2.micro"
    }
  }
  workspace = merge(local.env["default"], local.env[terraform.workspace])
}  
