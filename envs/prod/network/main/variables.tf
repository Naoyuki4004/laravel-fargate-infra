variable "vpc_cidr" {
  type    = string
  default = "172.30.0.0/16"
}

variable "azs" {
  type = map(object({
    public_cidr  = string
    private_cidr = string
  }))
  default = {
    a = {
      private_cidr = "172.30.48.0/20"
      public_cidr  = "172.30.0.0/20"
    },
    c = {
      private_cidr = "172.30.64.0/20"
      public_cidr  = "172.30.16.0/20"
    }
  }
}

variable "enable_nat_gateway" {
  type    = bool
  default = true
}

variable "single_nat_gateway" {
  type    = bool
  default = true
}