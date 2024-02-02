#########################################
### TESTE VNI única - RAFAEL OLIVEIRA ###
#########################################

resource "ibm_is_virtual_network_interface" "rip_vnic_vsi" {
  allow_ip_spoofing         = false
  auto_delete               = false
  enable_infrastructure_nat = true
  name                      = "vni-01"
  subnet                    = var.management_subnet_id
  security_groups           = [var.security_group_id]
  primary_ip {
    reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic_vsi.reserved_ip
  }
  #   ips{
  #     reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic_vsi-2.reserved_ip
  #   }
}

resource "ibm_is_subnet_reserved_ip" "rip_vnic_vsi" {
  subnet = var.management_subnet_id
  name   = "reserved-ip"
}

##############################################
### TESTE Multiplas VNIs - RAFAEL OLIVEIRA ###
##############################################

# resource "ibm_is_virtual_network_interface" "rip_vnic_vsi2" {
#   allow_ip_spoofing         = false
#   auto_delete               = false
#   enable_infrastructure_nat = true
#   name                      = "vni-02"
#   subnet                    = var.management_subnet_id
#   security_groups           = [var.security_group_id]
#   primary_ip {
#     reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic_vsi2.reserved_ip
#   }
#   #   ips{
#   #     reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic_vsi-2.reserved_ip
#   #   }
# }

# resource "ibm_is_subnet_reserved_ip" "rip_vnic_vsi2" {
#   subnet = var.management_subnet_id
#   name   = "reserved-ip-2"
# }