# Goals
- How and why we use the MVC pattern
- How Sinatra serves data in response to web requests
- How CRUD actions map to RESTful routes

## Deliverables
- For each deliverable, what routes are necessary?

<!-- - view all books on a site
GET '/books' #index => template index.html -->

- view info on an individual book
GET '/books/:id' #show => template show.html

- create a new book
GET '/books/new' #new => template new.html form inputs
POST '/books' #create => handle the creation of a new book, no template

- edit an existing book
GET '/books/:id/edit' #edit => template edit.html form inputs
PATCH '/books/:id' #update => handle updating a book object, no template

- deleting an existing book
DELETE '/books/:id' #delete => handle deletion of book object, no template

7 routes
