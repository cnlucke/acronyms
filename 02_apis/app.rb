require 'pry'
require 'rest-client'
require 'json'



def fetch_google
  response = RestClient.get("www.google.com")
  binding.pry
end


def fetch_books(genre)
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=subject:#{genre}&maxResults=40")
  json = JSON.parse(response)
  books = json["items"]
  binding.pry
end

def fetch_fiction
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=subject:suspense&maxResults=40")

end

def fetch_suspense
end

def fetch_books_over_three_hundred
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=subject:suspense&maxResults=40")
  json = JSON.parse(response)
  books = json["items"].select do |book|
    book["volumeInfo"]["pageCount"] > 300
  end
  binding.pry
end


def search_book(name)
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{name}&maxResults=40")
  json = JSON.parse(response)
  found_book = json["items"].first
  binding.pry
end

search_book("Wabi Sabi")
