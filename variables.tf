variable "hcloud_token" {
  type = string
  sensitive = true
}

# Germany:
#   - nbg1 (Nuremberg)
#   - fsn1 (Falkenstein)
# Finland:
#   - hel1 (Helsinki)
# USA:
#   - ash  (Ashburn, Virginia)
#   - hil  (Hillsboro, Oregon)
# Singapore:
#   - sin  (Singapore)
variable "hetzner_location" {
  description = "Location in Hetzner Cloud"
  type = string
  default = "fsn1"
}

# Name        Description                   Network Zone
# ---------   ---------------------------   ------------
# nbg1-dc3    Nuremberg 1 virtual DC 3      eu-central
# hel1-dc2    Helsinki 1 virtual DC 2       eu-central
# fsn1-dc14   Falkenstein 1 virtual DC 14   eu-central
# ash-dc1     Ashburn virtual DC 1          us-east
# hil-dc1     Hillsboro virtual DC 1        us-west
# sin-dc1     Singapore virtual DC 1        ap-southeast
# ---------   ---------------------------   ------------
variable "hetzner_datacenter" {
  description = "Datacenter in Hetzner Cloud"
  type = string
  default = "fsn1-dc14"
}

# Name     Type              VCPU   RAM (GB)   SSD (GB)   Price (€/month)
# ------   ---------------   ----   --------   --------   ---------------
# ? CX11   Shared (Intel?)     1      2          20             3.29    ?
# CX22     Shared (Intel)      2      4          40             4.51
# CX32     Shared (Intel)      4      8          80             8.09
# CX42     Shared (Intel)      8     16         160            19.52
# CX52     Shared (Intel)     16     32         320            38.56
# ------   ---------------   ----   --------   --------   ---------------
# CPX11    Shared (AMD)        2      2          40             5.18
# CPX21    Shared (AMD)        3      4          80             8.98
# CPX31    Shared (AMD)        4      8         160            16.18
# CPX41    Shared (AMD)        8     16         240            29.99
# CPX51    Shared (AMD)       16     32         360            65.33
# ------   ---------------   ----   --------   --------   ---------------
variable "hetzner_vps_type" {
  description = "VPS type on Hetzner Cloud"
  type = string
  default = "cx22"
}

# Name              Description      Architecture
# ---------------   ---------------  ------------
# ubuntu-20.04      Ubuntu 20.04       x86, arm
# ubuntu-22.04      Ubuntu 22.04       x86, arm
# ?                 Ubuntu 24.04                ?
# debian-11         Debian 11          x86, arm
# ?                 Debian 12                   ?
# centos-stream-9   CentOS Stream 9    x86, arm
# ?                 Fedora 39                   ?
# ?                 Fedora 40                   ?
# rocky-8           Rocky Linux 8      x86, arm
# rocky-9           Rocky Linux 9      x86, arm
# alma-8            AlmaLinux 8        x86
# alma-9            AlmaLinux 9        x86
# ---------------   ---------------  ------------
variable "hetzner_image" {
  description = "OS image for VPS"
  type = string
  default = "debian-11"
}

