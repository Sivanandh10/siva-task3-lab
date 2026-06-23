resource "network" "main" {
  subnet = "10.0.220.0/24"
}

resource "container" "workstation" {
  image {
    name = "ubuntu:22.04"
  }
  privileged = true
  network {
    id = resource.network.main.meta.id
  }
}
