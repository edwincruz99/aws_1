module "ec2_public" {
source = "terraform-aws-modules/ec2-instance/aws"
#version = "2.17.0"
version = "5.6.0"
#variables
name  = "${var.enviroment}-Bastionhost"
# instance_count  = 5
ami   = data.aws_ami.amzlinux2.id
instance_type  = var.intance_type
key_name = var.instance_keypair
#monitoring  = true
subnet_id  = module.vpc.public_subnet[0]
#vpc_security_group_ids 
vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
}
