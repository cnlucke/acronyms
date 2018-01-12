class Author
  # author has many books
  # @author.books => [<Book>]
  # books
  #

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @books = []
  end

  def books
    # return some books
    @books
  end

  def add_book(book)
    @books << book
    book.author = self
    # imagine book is an instance
  end



  def save
    @@all << self
  end



  def self.create(name)
    author = self.new(name)
    author.save
    author
  end



  # Book.all.map { |book| book.title - book.author }


  # Author -> Class
  def self.library #> ALl book titles => ["Count by Alex", "Sirens of Titan by Terrance"]
    self.all.each do |author|
      author.books.map do |book|
        "#{book.title} - #{book.author.name}"
      end
    end
  end



  def self.all
    @@all
  end


end
