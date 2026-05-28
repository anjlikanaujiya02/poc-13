module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.27"

  subnet_ids = module.vpc.public_subnets
  vpc_id     = module.vpc.vpc_id

  eks_managed_node_groups = {
    default = {
      desired_size = 1
      max_size     = 2
      min_size     = 1

      instance_types = ["t3.micro"]
    }
  }
}
