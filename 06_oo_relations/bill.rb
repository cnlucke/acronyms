class Bill
  @@all = []
  attr_accessor :doctor, :patient, :amount

  def initialize(doctor, patient, amount)
    @doctor = doctor
    @patient = patient
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_outstanding
    
  end
end
