require 'pry'
require_relative './person'
require_relative './apartment'
require_relative './rental'


@apt = Apartment.new("Delancey", 100)
@johann = Person.new("Johann", 100)
Pry.start
