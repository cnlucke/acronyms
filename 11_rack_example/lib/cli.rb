require 'rest-client'
require 'json'

class CLI

  def run
    seed_db

    while true
      request = get_input
      render_response(request)
    end
  end

  def get_input
    print_empty_line
    puts 'Enter a request:'
    gets.chomp
  end


  def render_response(request)
    print_empty_line

    if request == '/'
      puts 'Welcome to the Library Searcher'
    elsif request == '/about'
      puts 'This is a CLI application'
    elsif request == '/books'
      puts 'All the books'
      render_all_books
    elsif request.match(/\/books\/*/)
      id = request.split('/')[2]
      render_specific_book(id)
    else
      puts 'Sorry we do not understand to this request (404)'
    end

  end

  def render_all_books
    Book.all.each do |book|
      puts "#{book.id}. #{book.title}"
    end
  end


  def render_specific_book(id)
    book = Book.find_by(id: id)

    if book
      puts "\"#{book.title}\" by #{book.author_name}"
      puts "Summary: #{book.description[0...280]}..."
    else
      puts 'No book with that id was found'
    end
  end

  private

  def seed_db
    Adapter::GoogleBooks.new.fetch_books
  end

  def print_empty_line
    puts "\n"
  end

end
