class App {
  constructor() {
    this.bookList = document.getElementById("book-list");
    this.bookForm = document.getElementById("book-form");
    this.createBook = this.createBook.bind(this);
    /// sum = sum + 1
  }

  addEventListeners() {
    console.log(this.bookForm);
    this.bookForm.addEventListener("submit", event => {
      event.preventDefault();

      let titleInput = event.target.children[0];
      let authorInput = event.target.children[1];
      console.log(this);
      this.createBook(titleInput.value, authorInput.value);
      titleInput.value = "";
      authorInput.value = "";
    });
  }

  createBook(title, author) {
    console.log(title, author);
    //
    // let options = {
    //   method: "POST",
    //   headers: {
    //     "Content-Type": "application/json",
    //     Accept: "application/json"
    //   },
    //   body: JSON.stringify({ title: title, author: author })
    // };
    fetch("http://localhost:3000/books", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"
      },
      body: JSON.stringify({ title: title, author: author })
    })
      .then(res => res.json())
      .then(json => {
        this.createBookItem(json);
      });
  }

  createBookItem(book) {
    console.log(book);
    let bookItem = document.createElement("li");
    bookItem.innerText = book.title;
    this.bookList.appendChild(bookItem);
  }

  fetchBooks() {
    fetch("http://localhost:3000/books")
      .then(res => res.json())
      .then(books => {
        this.createBookItems(books);
      });
  }

  createBookItems(books) {
    books.forEach(book => {
      let bookItem = document.createElement("li");
      bookItem.innerText = book.title;
      this.bookList.appendChild(bookItem);
    });
  }
}

/*

I want to submit the form and create a new book

0. I need the form
1. a) addd an event listener to the form -> submit
1. b) prevent default for form
2. get values from form
3. submit some information to the backend
4. we receive some data
5. add it to the web page


*/
