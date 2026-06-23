resource "network" "main" {
  subnet = "10.0.220.0/24"
}

resource "container" "workstation" {
  image {
    name = "docker:dind"
  }
  privileged = true
  network {
    id = resource.network.main.meta.id
  }
}
