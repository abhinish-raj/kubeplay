variable "control_plane_ami" {
  description = "The AMI ID for control plane nodes"
  type        = string
}

variable "worker_ami" {
  description = "The AMI ID for worker nodes"
  type        = string
}

variable "control_plane_count" {
  description = "The number of control plane nodes"
  type        = number
}

variable "worker_count" {
  description = "The number of worker nodes"
  type        = number
}