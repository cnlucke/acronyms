class Patient
  @@all = []
  attr_accessor :name, :condition

  def initialize(name, condition)
    @name = name
    @condition = condition
    @@all << self
  end

  def self.all
    @@all
  end

  def total_bills
    Bill.all.select do |bill|
      bill.patient == self
    end
  end

  def total_bill_amount
    total_bills.inject(0) { |sum, bill| sum + bill.amount }
  end

  def doctors
    total_bills.map do |bill|
      bill.doctor
    end
  end

 def fire(doctor)
   Bill.all.delete_if { |bill| bill.doctor == doctor && bill.patient == self }
   doctor
 end

end
