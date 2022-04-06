/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "billing_account_id" {
  description = "Billing Account associated to the GCP Resources"
  type        = string
}

variable "boot_disk_size_gb" {
  description = "The size of the boot disk in GB attached to this instance"
  type        = number
  default     = 100
}

variable "boot_disk_type" {
  description = "Disk types for notebook instances"
  type        = string
  default     = "PD_SSD"
}

variable "create_network" {
  description = "If the module has to be deployed in an existing network, set this variable to false."
  type        = bool
  default     = true
}

variable "create_project" {
  description = "Set to true if the module has to create a project.  If you want to deploy in an existing project, set this variable to false."
  type        = bool
  default     = true
}

variable "enable_services" {
  description = "Enable the necessary APIs on the project.  When using an existing project, this can be set to false."
  type        = bool
  default     = true
}

variable "folder_id" {
  description = "Folder ID where the project should be created. It can be skipped if already setting organization_id. Leave blank if the project should be created directly underneath the Organization node. "
  type        = string
  default     = ""
}

variable "ip_cidr_range" {
  description = "Unique IP CIDR Range for AI Notebooks subnet"
  type        = string
  default     = "10.142.190.0/24"
}

variable "machine_type" {
  description = "Type of VM you would like to spin up"
  type        = string
  default     = "n1-standard-1"
}

variable "network_name" {
  description = "Name of the network to be created."
  type        = string
  default     = "ai-notebook"
}

variable "notebook_count" {
  description = "Number of AI Notebooks requested"
  type        = number
  default     = 1
}

variable "notebook_names" {
  description = "Names of AI Notebooks requested"
  type        = list(string)
  default     = []
}

variable "organization_id" {
  description = "Organization ID where GCP Resources need to get spin up. It can be skipped if already setting folder_id"
  type        = string
  default     = ""
}

variable "project_name" {
  description = "Project name or ID, if it's an existing project."
  type        = string
  default     = "radlab-silicon-design"
}

variable "random_id" {
  description = "Adds a suffix of 4 random characters to the `project_id`"
  type        = string
  default     = null
}

variable "set_external_ip_policy" {
  description = "Enable org policy to allow External (Public) IP addresses on virtual machines."
  type        = bool
  default     = true
}

variable "set_shielded_vm_policy" {
  description = "Apply org policy to disable shielded VMs."
  type        = bool
  default     = true
}

variable "set_trustedimage_project_policy" {
  description = "Apply org policy to set the trusted image projects."
  type        = bool
  default     = true
}

variable "subnet_name" {
  description = "Name of the subnet where to deploy the Notebooks."
  type        = string
  default     = "subnet-ai-notebook"
}

variable "trusted_users" {
  description = "The list of trusted users."
  type        = set(string)
  default     = []
}

variable "zone" {
  description = "Cloud Zone associated to the AI Notebooks"
  type        = string
  default     = "us-east4-c"
}

variable "image_name" {
  description = "Basename for for the compute and container image."
  type        = string
  default     = "silicon-design-ubuntu-2004"
}
