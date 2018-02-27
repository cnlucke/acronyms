document.addEventListener("DOMContentLoaded", () => {
  console.log(this);
  let liItems = document.getElementsByClassName("student-item");
  for (let i = 0; i < liItems.length; i++) {
    console.log(liItems[i]);
    let item = liItems[i];

    let randoPerson = new Person("Meryl", 100);

    // who is this???
    // console.log(this)

    /// all bind does is establish exactly who should be calling the method

    item.addEventListener("click", () => {
      console.log(this);
    });
    // item.addEventListener("click", function() {
    //   console.log(this);
    // });
    // // item.addEventListener("click", function() );
  }

  console.dir(liItems[0]);
  // console.log(liItems);
});

class Person {
  /*
  name
  age

  */

  constructor(name, age) {
    this.name = name;
    this.age = age;
    this.firstChild = "First Born Child";

    /// sum = sum + 1
    /// what is this here? the isntance of the person
    // this.sayMyName = this.sayMyName.bind(this);
  }

  // someArrowFunc = () => {
  //   console.log(this);
  // };

  static allPeople() {
    console.log(this);
    Person.allAges();
  }

  static allAges() {}

  // whatsMyChildsName() {
  //   // console.dir(this.firstChild);
  // }
  //
  // sayMyName() {
  //   console.dir(this);
  //   console.log(this.name);
  //   // console.log("Saying my name");
  //   // console.log("This is", this, "Name is", this.name);
  // }
}
