variable "worker_node_group_name" {
    type        = string
    description = "The name of this EKS Worker Node Group"
}

variable "desired_size" {
    type        = number
    description = "The desired number of worker nodes"
}

variable "max_size" {
    type        = number
    description = "The maximum number of worker nodes"
}

variable "min_size" {
    type        = number
    description = "The minimum number of worker nodes"
}