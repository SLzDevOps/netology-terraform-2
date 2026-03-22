locals {
  vm_web_name = "${var.vpc_name}-${var.vm_web_env}-${var.vm_web_role}"
  vm_db_name  = "${var.vpc_name}-${var.vm_db_env}-${var.vm_db_role}"


  vm_web_resources = var.vms_resources["web"]
  vm_db_resources  = var.vms_resources["db"]
}
