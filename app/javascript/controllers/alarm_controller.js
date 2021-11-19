import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form'];

  connect() {
  }

  confirm() {
    confirm("Items exchanged?");
    document.getElementsById("home-tab").selected = false;
    document.getElementsById('exchange-tab').selected = true;
  }
}
