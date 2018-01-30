require 'pry'
require_relative './config/environment'

class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new

    # binding.pry
    if req.path == '/'
      resp.write('Welcome to the Library App')
    elsif req.path == '/about'
      resp.write('This is a WEB Application')
    elsif req.path == '/books/'
      # resp.add_headers('Content-Type', 'text/html')
      resp.write('<h1>ALL THE BOOKS</h1>')
      resp.write('<ul>')
      Book.all.each do |book|
        resp.write("<li>#{book.id}. #{book.title}</li>")
      end
      resp.write('</ul>')
    elsif req.path.match(/\/books\/*/)
      id = req.path.split('/')[2]
      book = Book.find_by(id: id)

      if book
        resp.write(book.title)
        resp.write(book.author_name)
      else
        resp.status = 404
        resp.write('BOOK not found')
      end
    else
      resp.status = 404
      resp.write('Not Found, Not sure how to respond to that request')
    end

    resp.finish
  end

end


run Application.new
