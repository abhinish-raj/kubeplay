module "control_plane_nodes" {
  source = "../ec2_instance"
  ami    = var.control_plane_ami
  // Add other necessary variables for control plane nodes
}

module "worker_nodes" {
  source = "../ec2_instance"
  ami    = var.worker_ami
  // Add other necessary variables for worker nodes
}

// Use provisioners or other configurations to set up the Kubernetes cluster