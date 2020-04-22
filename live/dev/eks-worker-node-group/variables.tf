variable "worker_node_group_name" {
    type        = string
    description = "The name of this EKS Worker Node Group"
}

variable "scaling_config" {
    type = object({
        desired_size    = number
        max_size        = number
        min_size        = number
    })
}