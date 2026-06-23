resource "task" "init_commit" {
  description = "Initialise a repo and make your first commit"

  config {
    target = resource.container.workstation
  }

  condition "repo_init" {
    description = "Initialise a Git repo in /root/gitproject"
    setup {
      script = "scripts/setup.sh"
    }
    check {
      script = "scripts/check_init.sh"
    }
  }

  condition "first_commit" {
    description = "Make a commit with the message 'initial commit'"
    check {
      script = "scripts/check_commit.sh"
    }
  }
}

resource "task" "branching" {
  description = "Create and switch to a new branch"

  config {
    target = resource.container.workstation
  }

  condition "branch_created" {
    description = "Create a branch named 'feature'"
    check {
      script = "scripts/check_branch.sh"
    }
  }

  condition "branch_switched" {
    description = "Switch to the feature branch"
    check {
      script = "scripts/check_switched.sh"
    }
  }
}

resource "task" "merging" {
  description = "Merge the feature branch back to main"

  config {
    target = resource.container.workstation
  }

  condition "feature_commit" {
    description = "Add a commit on the feature branch"
    check {
      script = "scripts/check_feature_commit.sh"
    }
  }

  condition "merged" {
    description = "Merge feature into main"
    check {
      script = "scripts/check_merged.sh"
    }
  }
}

resource "task" "conflict" {
  description     = "Resolve a merge conflict"
  success_message = "Outstanding. You have completed the Git Fundamentals workshop."

  config {
    target = resource.container.workstation
  }

  condition "conflict_resolved" {
    description = "Resolve the conflict and commit the result"
    check {
      script = "scripts/check_conflict.sh"
    }
  }
}
