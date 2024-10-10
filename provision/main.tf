terraform {
  required_providers {
    netbox = {
      source  = "e-breuninger/netbox"
      version = "~> 3.8.0"
    }
  }
}

provider "netbox" {
  server_url = "http://host.docker.internal:8000"
  api_token  = "0123456789abcdef0123456789abcdef01234567"
}

variable "data" {}

resource "netbox_region" "countries" {
  for_each = {for region in var.data.countries: region.name => region}
  name        = each.key
}

resource "netbox_region" "capitals" {
  for_each = {for region in var.data.capitals: region.name => region}
  name        = each.key
  parent_region_id = netbox_region.countries[each.value.parent].id
}

resource "netbox_vrf" "vrfs" {
  for_each = {for vrf in var.data.vrfs: vrf.name => vrf}
  name = each.key
}

resource "netbox_prefix" "container_prefixes" {
  for_each = {for prefix in var.data.container_prefixes: prefix.prefix => prefix}
  prefix      = each.value.prefix
  status      = each.value.status
  vrf_id = netbox_vrf.vrfs[each.value.vrf.name].id
}

resource "netbox_site_group" "my_site_groups" {
  for_each = {for site_group in var.data.site_groups: site_group.name => site_group}
  name        = each.key
}

resource "netbox_site" "my_sites" {
  for_each = {for site in var.data.sites: site.name => site}
  name = each.key
  region_id = netbox_region.capitals[each.value.region.name].id
  group_id = netbox_site_group.my_site_groups[each.value.group.name].id
  status = lower(each.value.status)
}

# resource "netbox_vlan" "my_vlans" {
#   for_each = {for vlan in var.data.vlans: vlan.vid => vlan}
#   name = each.value.name
#   vid = each.key
# }

# resource "netbox_ipam_role" "my_ipam_roles" {
#   for_each = {for role in var.data.roles: role.name => role}
#   name = each.value.name
#   weight = each.value.weight
# }

# resource "netbox_prefix" "my_prefixes" {
#   for_each = {for prefix in var.data.prefixes: prefix.prefix => prefix}
#   prefix      = each.value.prefix
#   status      = lower(each.value.status)
#   description = each.value.description
#   site_id = netbox_site.my_sites[each.value.site.name].id
#   role_id = each.value.role != null ? netbox_ipam_role.my_ipam_roles[each.value.role.name].id : null
# }

resource "netbox_manufacturer" "my_vendors" {
  for_each = {for vendor in var.data.manufacturers: vendor.name => vendor}
  name = each.value.name
}

resource "netbox_device_role" "my_dev_roles" {
  for_each = {for dev_role in var.data.device_roles: dev_role.name => dev_role}
  color_hex = each.value.color
  name      = each.value.name
  vm_role = each.value.vm_role
}

resource "netbox_device_type" "my_dev_types" {
  for_each = {for dev_type in var.data.device_types: dev_type.model => dev_type}
  model           = each.value.model
  manufacturer_id = netbox_manufacturer.my_vendors[each.value.manufacturer.name].id
  is_full_depth = each.value.is_full_depth
  u_height = each.value.u_height
}