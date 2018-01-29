class BooksController < Sinatra::Base
  # set :views, 'app/views/books'
  set :method_override, true

  # index of books
  get '/books' do
    @books = Book.all
    erb :'/index.html'
  end

  # create a book
  get '/books/new' do
    erb :'/new.html'
  end

  post '/books' do
    book = Book.create(params[:book])
    redirect "/books/#{book.id}"
  end

  # show a book
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :'/show.html'
  end

  # edit a book
  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :'/edit.html'
  end

  patch '/books/:id' do
    @book = Book.find(params[:id])
    @book.update(params[:book])
    redirect "/books/#{@book.id}"
  end

  # delete a book
  delete '/books/:id' do
    @book = Book.find(params[:id])
    @book.destroy
    redirect "/books"
  end
end
