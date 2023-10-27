variable "zone_name" {
  type        = string
  description = "The route53 zone name"
}

variable "zone_apex_name" {
  type        = string
  description = "The name of the zone apex to create the DNS record in"
  default     = ""
}

variable "zone_records" {
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
  description = "List of DNS records to create in the zone"
  default     = null
}
