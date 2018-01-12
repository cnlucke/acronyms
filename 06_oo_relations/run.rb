require 'pry'
require_relative './book'
require_relative './author'



alex = Author.create("Alex")
kurt = Author.create("Kurt")
count = Book.create("Count")
sirens = Book.create("Sirens")
alex.add_book(count)
kurt.add_book(sirens)


# 10.times do |b|
#   Book.create("Book #{b}")
# end
# 10.times do |a|
#   author = Author.create("Author #{a}")
#   author.books << Book.all.sample
# end

Pry.start
