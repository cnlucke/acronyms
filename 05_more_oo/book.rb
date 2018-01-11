class Book
  @@all = []
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def similar_books
    self.class.all.select do |book|
      book.title == self.title
    end
  end

  # Create will initialize and save
  def self.create(title)
    book = self.new(title)
    book.save
  end

  # @book.save
  def save
    @@all << self
    true
  end

  # Book.all
  def self.all
    @@all
  end

  # WHOSE RESPONSIBILITY IS IT TO CALL SEARCH BOOKS
  # a) instance
  # b) class YESSSS
  def self.search_books(title)
    books = self.all.find do |book|
      book.title == title
    end

  end

  # class method

  def self.all_titles
    self.all.map do |book|
      book.title
    end
  end


end
