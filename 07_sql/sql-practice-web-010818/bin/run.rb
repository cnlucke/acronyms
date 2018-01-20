require 'sqlite3'
require 'pry'


DB = { :conn => SQLite3::Database.new('./chinook.db') }




# procedural

# def create_artist(db, name)
#   sql = <<-SQL
#     INSERT INTO artists (name) VALUES (?)
#   SQL
#   DB[:conn].execute(sql, name)
# end

## OOP


class Artist
  attr_accessor :id, :name
  def initialize(id = nil, name)
    @id = id
    @name = name
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def save
    sql = <<-SQL
      INSERT INTO artists (name) VALUES (?)
    SQL
    DB[:conn].execute(sql, self.name)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM artists;")[0][0]
  end


  def self.all
    sql = <<-SQL
      SELECT * FROM artists
    SQL
    results = DB[:conn].execute(sql)
    artists = results.map do |result|
      Artist.new(result[0], result[1])
    end
    artists

  end


  def self.find_or_create_by(name:)
    # seach for name
    # if no result create
  end


  def

end

binding.pry
puts "Hello"
