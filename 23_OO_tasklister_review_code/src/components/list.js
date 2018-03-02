/*
list is responsible for creating a single list component
*/
const List = (() => {
  let id = 1
  return class List {

    constructor(title) {
      this.id = id
      this.title = title
      this.tasks = []
      id++
      this.createTaskForm = document.getElementById("create-task-form")
      this.createListForm.addEventListener("submit", this.createNewTask.bind(this))
    }

    createNewTask(event) {
      event.preventDefault()
      let priority = this.newTaskPriority.value
      let description = this.newTaskDescription.value
      let selectedList = this.lists[this.parentListDropdown.selectedIndex]
      let newTask = new Task(description, priority)
      selectedList.tasks.push(newTask)
      this.render()
    }

    renderAllTasks() {
      return this.tasks.map(task => task.render())
    }

    render() {
      return (
        `<div data-id=${this.id}>
          <h2>${this.title}</h2>
          <ul>${this.renderAllTasks().join("")}</ul>
        </div>`
      )
    }
  }

})()
