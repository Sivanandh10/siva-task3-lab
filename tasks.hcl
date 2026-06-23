resource "task" "pull_run" {
  description = "Pull and run your first container"

  config {
    target = resource.container.workstation
  }

  condition "hello_world" {
    description = "Run the hello-world container"
    check {
      script = "scripts/check_hello.sh"
    }
  }

  condition "nginx_running" {
    description = "Run nginx container on port 8080"
    check {
      script = "scripts/check_nginx.sh"
    }
  }
}

resource "task" "inspect" {
  description = "Inspect a running container"

  config {
    target = resource.container.workstation
  }

  condition "inspect_done" {
    description = "Save nginx container inspect output to /root/docker-workshop/inspect.json"
    check {
      script = "scripts/check_inspect.sh"
    }
  }
}

resource "task" "volumes" {
  description = "Use a Docker volume"

  config {
    target = resource.container.workstation
  }

  condition "volume_created" {
    description = "Create a volume named mydata and mount it"
    check {
      script = "scripts/check_volume.sh"
    }
  }
}

resource "task" "networking" {
  description     = "Connect containers on a network"
  success_message = "Outstanding work. You have completed the Docker Fundamentals workshop."

  config {
    target = resource.container.workstation
  }

  condition "network_created" {
    description = "Create a Docker network named labnet"
    check {
      script = "scripts/check_network.sh"
    }
  }

  condition "container_connected" {
    description = "Run a container connected to labnet"
    check {
      script = "scripts/check_connected.sh"
    }
  }
}
