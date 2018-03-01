class App {

  constructor() {
    this.lists = []
    this.initializeEventListeners()
  }

  getAllLists() {
     // fetch from backend
     // make all the list objects from the JSON data
     // make all task objects from JSON data (maybe during the same time we create list objects)
     // render the app
  }

  initializeEventListeners() {
    //new list form and input field
    this.createListForm = document.getElementById("create-list-form")
    this.newListTitle = document.getElementById("new-list-title")
    //new task form and input fields
    // this.createTaskForm = document.getElementById("create-task-form")
    this.parentListDropdown = document.getElementById("parent-list") //dropdown select
    this.newTaskDescription = document.getElementById("new-task-description")
    this.newTaskPriority = document.getElementById("new-task-priority")
    this.listsSection = document.getElementById("lists")//section of page where lists will be rendered to
    //attach event listeners
    this.createListForm.addEventListener("submit", this.createNewList.bind(this))
    // this.createTaskForm.addEventListener("submit", this.createNewTask.bind(this))
    // this.listsSection.addEventListener("click", this.deleteList.bind(this))
  }

  createNewList(event) {
    event.preventDefault()
    let title = this.newListTitle.value
    let newList = new List(title)
    this.lists.push(newList)
    this.render()
  }

  // createNewTask(event) {
  //   event.preventDefault()
  //   let priority = this.newTaskPriority.value
  //   let description = this.newTaskDescription.value
  //   let selectedList = this.lists[this.parentListDropdown.selectedIndex]
  //   let newTask = new Task(description, priority)
  //   selectedList.tasks.push(newTask)
  //   this.render()
  // }

  renderAllLists() {
    return this.lists.map(list => list.render())
  }

  renderAllOptions() {
    this.parentListDropdown.innerHTML = this.lists.map(list => `<option value=${list.id}>${list.title}</option>`).join("")
  }

  render() {
    this.renderAllOptions()
    this.listsSection.innerHTML = this.renderAllLists().join("")
  }

}
