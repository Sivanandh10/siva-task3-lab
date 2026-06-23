resource "lab" "siva_task3_lab" {
  title       = "Docker Fundamentals"
  description = "Learn Docker hands-on - pull images, run containers, inspect, use volumes and networking."
  layout      = resource.layout.two_column

  settings {
    timelimit {
      duration   = "90m"
      show_timer = true
    }
  }

  content {
    chapter "docker_basics" {
      title = "Docker Basics"

      page "overview" {
        reference = resource.page.overview
      }
      page "pull_run" {
        reference = resource.page.pull_run
      }
      page "inspect" {
        reference = resource.page.inspect
      }
    }

    chapter "docker_advanced" {
      title = "Going Further"

      page "volumes" {
        reference = resource.page.volumes
      }
      page "networking" {
        reference = resource.page.networking
      }
    }
  }
}
