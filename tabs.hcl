resource "terminal" "shell" {
  target = resource.container.workstation
  shell  = "/bin/bash"
}

resource "editor" "code" {
  workspace "project" {
    directory = "/root/gitproject"
    target    = resource.container.workstation
  }
}
