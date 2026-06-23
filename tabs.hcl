resource "terminal" "shell" {
  target = resource.container.workstation
  shell  = "/bin/bash"
}

resource "editor" "code" {
  workspace "docker" {
    directory = "/root/docker-workshop"
    target    = resource.container.workstation
  }
}
