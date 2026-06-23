resource "lab" "siva_task3_lab" {
  title       = "Git Fundamentals"
  description = "Learn Git hands-on — init, commit, branch, merge, and resolve conflicts."
  layout      = resource.layout.two_column

  settings {
    timelimit {
      duration   = "60m"
      show_timer = true
    }
  }

  content {
    chapter "git_basics" {
      title = "Git Basics"

      page "overview" {
        reference = resource.page.overview
      }
      page "init_commit" {
        reference = resource.page.init_commit
      }
      page "branching" {
        reference = resource.page.branching
      }
    }

    chapter "git_collaboration" {
      title = "Collaboration"

      page "merging" {
        reference = resource.page.merging
      }
      page "conflict" {
        reference = resource.page.conflict
      }
    }
  }
}
