module "kubernetes_cluster" {
  source               = "./modules/kubernetes_cluster"
  control_plane_ami    = "ami-12345678"  # Replace with actual AMI IDs
  worker_ami           = "ami-98765432"
  control_plane_count  = 1
  worker_count         = 2
}