resource "page" "overview" {
  title = "Welcome to Docker"
  file  = "instructions/overview.md"
}

resource "page" "pull_run" {
  title = "Pull and Run Containers"
  file  = "instructions/pull_run.md"
  activities = {
    pull_run = resource.task.pull_run
  }
}

resource "page" "inspect" {
  title = "Inspect Containers"
  file  = "instructions/inspect.md"
  activities = {
    inspect = resource.task.inspect
  }
}

resource "page" "volumes" {
  title = "Docker Volumes"
  file  = "instructions/volumes.md"
  activities = {
    volumes = resource.task.volumes
  }
}

resource "page" "networking" {
  title = "Docker Networking"
  file  = "instructions/networking.md"
  activities = {
    networking = resource.task.networking
  }
}
