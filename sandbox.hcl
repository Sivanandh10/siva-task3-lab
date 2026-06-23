resource "network" "main" {
  subnet = "10.0.230.0/24"
}

resource "container" "workstation" {
  image {
    name = "ubuntu:22.04"
  }
  network {
    id = resource.network.main.meta.id
  }
  port {
    local = 80
  }
  port {
    local = 8080
  }

  health_check {
    timeout = "300s"
    http {
      address = "http://localhost:80"
      success_codes = [200, 304, 301, 302, 404]
    }
  }
}

resource "exec" "bootstrap" {
  target = resource.container.workstation
  script = "scripts/bootstrap.sh"
}
