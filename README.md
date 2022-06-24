## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =2.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.46.0 |       

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_net"></a> [net](#module\_net) | ./modules/network | n/a |
| <a name="module_virtual_machines"></a> [virtual\_machines](#module\_virtual\_machines) | ./modules/vm | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.46.0/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_pass"></a> [admin\_pass](#input\_admin\_pass) | User password | `string` | n/a | yes |
| <a name="input_ava_set_name"></a> [ava\_set\_name](#input\_ava\_set\_name) | availability set name | `string` | `"avset"` | no |
| <a name="input_cloud_location"></a> [cloud\_location](#input\_cloud\_location) | resource location | `string` | `"australiaeast"` | no |
| <a name="input_instances_tags"></a> [instances\_tags](#input\_instances\_tags) | Tags Owner and Part tags | `string` | `"mytags"` | no |
| <a name="input_private_NSG_name"></a> [private\_NSG\_name](#input\_private\_NSG\_name) | private NSG name | `string` | `"nsg-public"` | no |
| <a name="input_private_subnet_CIDR"></a> [private\_subnet\_CIDR](#input\_private\_subnet\_CIDR) | private subnet addr prefixs | `list(string)` | <pre>[<br>  "N/A"<br>]</pre> | no |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | private subnet name | `string` | `"private-sub"` | no |
| <a name="input_public_NSG_name"></a> [public\_NSG\_name](#input\_public\_NSG\_name) | Public NSG name | `string` | `"nsg-public"` | no |
| <a name="input_public_ip_to_front_LB_name"></a> [public\_ip\_to\_front\_LB\_name](#input\_public\_ip\_to\_front\_LB\_name) | public IP to front load balancer | `string` | `"lb-pulic-ip"` | no |
| <a name="input_public_subnet_CIDR"></a> [public\_subnet\_CIDR](#input\_public\_subnet\_CIDR) | public subnet addr prefixs | `list(string)` | <pre>[<br>  "N/A"<br>]</pre> | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | public subnet name | `string` | `"pub-sub"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | resource group name | `string` | `"RG"` | no |
| <a name="input_virtual_network_CIDR"></a> [virtual\_network\_CIDR](#input\_virtual\_network\_CIDR) | virtual network address space | `list(string)` | <pre>[<br>  "N/A"<br>]</pre> | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | Virtual Network name | `string` | `"v-net"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | n/a |
