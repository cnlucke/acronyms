require 'pry'
# require_relative './book'
# require_relative './author'

require_relative './pet'
require_relative './owner'
require_relative './pet_owner'
require_relative './doctor'
require_relative './patient'
require_relative './bill'


#
# fluffy = Pet.new("Fluffy")
# johann = Owner.new("Johann")
# fido = Pet.new("Fido")
# terrance = Owner.new("Terrance")
# esmery = Owner.new("Es")
# marty = Pet.new("Marty")
#
# johann.add_pet(fluffy)
# # johann.pets => 1 pet
# terrance.add_pet(fluffy)
# terrance.add_pet(fido)
#
# esmery.add_pet(marty)
# esmery.add_pet(fido)


johann = Doctor.new("Johann", "Brain")
terrance = Doctor.new("Terrance", "Foot")
esmery = Doctor.new("Es", "Back")

jeff = Patient.new("Jeff", "Foot Pain")
nat = Patient.new("Nat", "Headache")
lindsay = Patient.new("Lindsay", "Back Pain & Foot Pain")
terrance.charge(jeff, 10000)
terrance.charge(nat, 100)

johann.charge(nat, 10)

esmery.charge(jeff, 100000)
esmery.charge(nat, 100000)
esmery.charge(lindsay, 100)





Pry.start





# alex = Author.create("Alex")
# kurt = Author.create("Kurt")
# count = Book.create("Count")
# sirens = Book.create("Sirens")
# alex.add_book(count)
# kurt.add_book(sirens)


# 10.times do |b|
#   Book.create("Book #{b}")
# end
# 10.times do |a|
#   author = Author.create("Author #{a}")
#   author.books << Book.all.sample
# end
