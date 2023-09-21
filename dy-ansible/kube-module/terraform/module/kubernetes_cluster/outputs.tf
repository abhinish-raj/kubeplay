output "control_plane_instance_ids" {
  value = module.control_plane_nodes.ec2_instance_id
}

output "worker_instance_ids" {
  value = module.worker_nodes.ec2_instance_id
}