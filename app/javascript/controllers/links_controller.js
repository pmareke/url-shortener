import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "url" ]

  click() {
    setTimeout(() => {
      this.urlTarget.value = ""
    }, "1");
  }
}
