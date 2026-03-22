variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  description = "Resources configuration for VMs"
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
      hdd_size      = 5 # Было 5 ГБ, оставляем 5
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 5 # Было 5 ГБ, оставляем 5
      hdd_type      = "network-hdd"
    }
  }
}

variable "metadata" {
  type        = map(string)
  description = "Common metadata for all VMs"
  default = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMlxuzfD94REcF0jSfxAkgSklrDO/67ujb6vrgHRtwwc slazer88@yandex.ru"
  }
}

# VM web variables

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the VM instance"
}

variable "vm_web_env" {
  type        = string
  default     = "develop"
  description = "Environment for web VM"
}

variable "vm_web_role" {
  type        = string
  default     = "web"
  description = "Role for web VM"
}

# Закомментировано - используется в map переменной vms_resources
# variable "vm_web_cores" {
#   type        = number
#   default     = 2
#   description = "Number of CPU cores for VM"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
#   description = "Memory in GB for VM"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 5
#   description = "Core fraction for VM (5, 20, 50, 100)"
# }

# variable "vm_web_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "Enable serial port (1 = enabled, 0 = disabled)"
# }

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform ID for VM instance"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Whether the VM is preemptible"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image family for VM boot disk"
}

# VM db variables

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the DB VM instance"
}

variable "vm_db_env" {
  type        = string
  default     = "develop"
  description = "Environment for DB VM"
}

variable "vm_db_role" {
  type        = string
  default     = "db"
  description = "Role for DB VM"
}

# Закомментировано - используется в map переменной vms_resources
# variable "vm_db_cores" {
#   type        = number
#   default     = 2
#   description = "Number of CPU cores for DB VM"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = 2
#   description = "Memory in GB for DB VM"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = 20
#   description = "Core fraction for DB VM (5, 20, 50, 100)"
# }

# variable "vm_db_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "Enable serial port (1 = enabled, 0 = disabled)"
# }

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform ID for DB VM instance"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Whether the DB VM is preemptible"
}

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image family for DB VM boot disk"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Availability zone for DB VM"
}
