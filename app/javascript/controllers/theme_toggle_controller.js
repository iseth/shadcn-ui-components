// app/javascript/controllers/theme_toggle_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggleButton"]

  connect() {
    this.loadTheme()
    // this.updateTheme()
  }

  loadTheme() {
    const theme = localStorage.getItem('theme')
    if (theme === 'dark') {
      document.body.classList.add('dark')
    } else if (theme === 'light') {
      document.body.classList.remove('dark')
    }
  }

  toggle() {
    document.body.classList.toggle('dark')
    // this.updateTheme()
    localStorage.setItem('theme', document.body.classList.contains('dark') ? 'dark' : 'light');
  }

  updateTheme() {
    if (document.body.classList.contains('dark')) {
      this.toggleButtonTarget.innerHTML = 'dark '
    } else {
      this.toggleButtonTarget.innerHTML = 'light'
    }
  }
}
