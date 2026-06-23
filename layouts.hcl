resource "layout" "two_column" {
  column {
    width = "50"
    instructions {}
  }
  column {
    width = "50"
    tab "terminal" {
      title  = "Terminal"
      target = resource.terminal.shell
      active = true
    }
    tab "editor" {
      title  = "Project Files"
      target = resource.editor.code
    }
    tab "website" {
      title  = "Live Site"
      target = resource.service.website
    }
  }
}
