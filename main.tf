module "ec2" {
  source    = "./modules/ec2"
  ami_id    = "ami-0ac4101c751eae35f"
  inst_type = "t3.micro"
  key_pair  = "EC2"

}

module "vpc" {
  source                  = "./modules/vpc"
  vpc_cidr_block          = "192.168.0.0/16"
  subnet_cidr_block       = "192.168.0.0/20"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_lanuch = true
  ami_id                  = "ami-0ac4101c751eae35f"
  instance_type           = "t3.micro"
  key_name               = "EC2"
}