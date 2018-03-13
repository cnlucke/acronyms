class App {
  constructor() {
    this.list = document.getElementById("animal-list");
    this.form = document.getElementById("animal-form");
    this.fetchAnimals();
    this.addEventListeners();
  }

  addEventListeners() {
    this.form.addEventListener("submit", event => {
      event.preventDefault();
      let nameInput = document.getElementById("animal-name-input");
      let linkInput = document.getElementById("animal-link-input");
      this.createAnimal({ name: nameInput.value, url: linkInput.value });
    });
  }

  createAnimal(animalInputs) {
    fetch("http://localhost:3000/animals", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"
      },
      body: JSON.stringify({ animal: animalInputs })
    })
      .then(res => res.json())
      .then(json => {
        console.log(json);
      });
  }

  fetchAnimals() {
    fetch("http://localhost:3000/animals")
      .then(res => res.json())
      .then(json => {
        json.forEach(animalJSON => {
          console.log(animalJSON);
          let animal = new Animal(animalJSON);
          this.list.innerHTML += animal.render();
        });
      });
  }
}
