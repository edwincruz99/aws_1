terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
    }
  }
    cloud {
        organization = "mcittestaws1"
      workspaces {
        name = "aws_demo_montreal_college"
      }
    }

}
