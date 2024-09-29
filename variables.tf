
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
variable "vps_location" {
  description = "VPS location in Hetzner Cloud"
  type = string
  default = "fsn1"
}

#
# variable "vps_datacenter" {
#   description = "..."
#   type = string
#   default = "..."
# }

# Name    Type             VCPU   RAM (GB)   SSD (GB)   Price (€/month)
# -----   --------------   ----   --------   --------   ---------------
# CX22    Shared (Intel)     2      4          40             4.51
# CPX11   Shared (AMD)       2      2          40             5.18
# CX32    Shared (Intel)     4      8          80             8.09
# CPX21   Shared (AMD)       3      4          80             8.98
# CPX31   Shared (AMD)       4      8         160            16.18
# CX42    Shared (Intel)     8     16         160            19.52
# CPX41   Shared (AMD)       8     16         240            29.99
# CX52    Shared (Intel)    16     32         320            38.56
# CPX51   Shared (AMD)      16     32         360            65.33
# -----   --------------   ----   --------   --------   ---------------
variable "vps_type" {
  description = "VPS type on Hetzner Cloud"
  type = string
  default = "cx22"
}

#
# variable "vps_image" {
#   description = "..."
#   type = string
#   default = "..."
# }
