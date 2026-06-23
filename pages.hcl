resource "page" "overview" {
  title = "Welcome to Git"
  file  = "instructions/overview.md"
}

resource "page" "init_commit" {
  title = "Init and Commit"
  file  = "instructions/init_commit.md"
  activities = {
    init_commit = resource.task.init_commit
  }
}

resource "page" "branching" {
  title = "Branching"
  file  = "instructions/branching.md"
  activities = {
    branching = resource.task.branching
  }
}

resource "page" "merging" {
  title = "Merging"
  file  = "instructions/merging.md"
  activities = {
    merging = resource.task.merging
  }
}

resource "page" "conflict" {
  title = "Resolve Conflicts"
  file  = "instructions/conflict.md"
  activities = {
    conflict = resource.task.conflict
  }
}
