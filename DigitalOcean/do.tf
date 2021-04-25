terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
}
}
}

#export DO_PAT="Valor do Token"  Será utilizado como expressão para preenchimento do Token.
#O input da variável var.do_token será preenchido na execução do terraform apply -var "do_token=${DO_PAT}"

variable "do_token" {}

provider "digitalocean" {
    token = var.do_token
}

resource "digitalocean_droplet" "ubuntu" {
  name     = "Ubuntu1"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-20-04-x64"
  ssh_keys = ["30108618"]
}
resource "digitalocean_droplet" "centOS" {
  name     = "centOS2"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-20-04-x64"
  ssh_keys = ["30108618"]
}
