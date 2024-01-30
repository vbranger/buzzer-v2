import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar"
export default class extends Controller {
  static targets = ["sidebarIcon", "subheader"];
  static classes = ["open", "closed"];
  static values = { isOpen: Boolean };

  toggle(e) {
    const isSidebarOpen = this.isOpenValue;
    const target = e.currentTarget;
    if (isSidebarOpen && this.element.dataset.currentTab === target.dataset.tabName) {
      this.closeSidebar(target);
    } else {
      this.openSidebar(target);
    }
  }

  openSidebar(target) {
    this.isOpenValue = true;
    target.classList.remove(...target.dataset.closedClass.split(" "));
    target.classList.add(...target.dataset.openClass.split(" "));
    this.element.dataset.currentTab = target.dataset.tabName;
    this.subheaderTarget.classList.toggle("hidden");
  }

  closeSidebar(target) {
    this.isOpenValue = false;
    target.classList.add(...target.dataset.closedClass.split(" "));
    target.classList.remove(...target.dataset.openClass.split(" "));
    this.subheaderTarget.classList.toggle("hidden");
  }
}