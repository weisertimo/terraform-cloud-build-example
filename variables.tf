# GCP Project ID
variable "project_id" {
    type = string
}

# Region for computing resources
variable "location" {
    type = string
    default = "europe-west1-b"
}

# Defines if cluster node instances should be preemtible
variable "preemptible_instances" {
    type = bool
    default = true
}

# Defines if cluster node instances should be preemtible
variable "node_pool_machine_type" {
    type = string
    default = "e2-standard-1"
}

variable "node_count" {
    type = string
}