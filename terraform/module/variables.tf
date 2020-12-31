variable "server_name" {
  type        = string
  description = "name of instance"
}
variable "machine_type" {
  type        = string
  description = "machine type of instance"

}
variable "zone" {
  type        = string
  description = "zone of instance"

}

variable "network" {
  description = "Name of the network, use null if creating on shared vpc"
}

variable "subnetwork" {
  description = "Enter the particular subnet in the vpc"
  default = ""
}

variable "subnetwork_project" {
  description = "Project ID where subnetwork belong, optional on host vpc, required if shared vpc"
  default     = null
}


variable "image_name" {
  type        = string
  description = "image_name of description"
}