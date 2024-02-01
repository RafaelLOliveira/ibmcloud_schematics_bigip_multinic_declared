# resource "ibm_is_virtual_network_interface" "vnic-vsi" {
#   allow_ip_spoofing = false 
#   auto_delete = false
#   enable_infrastructure_nat = true
#   name = "vnic01-vsi"
#   subnet = "02u7-e32f9b41-1f5f-4e22-b3f4-1fabf12d9340"
#   security_groups = "r042-d29e8e21-0b7f-494c-ab99-7bd27c100398"
#   primary_ip {
#     reserved_ip = ibm_is_subnet_reserved_ip.reserved_ip.reserved_ip
#   }
#   ips{
#     reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic01_vsi03_02.reserved_ip
#   }
#   ips{
#     reserved_ip = ibm_is_subnet_reserved_ip.rip_vnic01_vsi03_03.reserved_ip
#   }
# }
