import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="previews"
export default class extends Controller {
  connect() {
    console.log("Hello WOrld", this.element)
  }
}
