require "pry"

class BankAccount
  attr_reader :user_id, :balance
  attr_accessor :address # b.address = "New one"
  #same as
  # attr_reader :address
  # attr_writer :address


  #attr_reader :balance

  @@all = []

  def initialize(user_id, balance)
    @user_id = user_id
    @balance = balance

    @@all << self
  end

  # THESE TWO are the same as attr_accessor :balance
  def balance #same as attr_reader :balance
    @balance
  end

  def balance=(new) #same as attr_writer :balance
    @balance = new
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def widthdraw(amount)
    @balance = @balance - amount
  end

  def self.all
    @@all
  end

end

Pry.start




# [OBJ]   a
#       ->
# [OBJ2]
# [OBJ3]  ^
