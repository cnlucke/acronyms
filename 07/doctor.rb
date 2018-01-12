

class Doctor
  @@all = []
  attr_accessor :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  # johann.charge(<Patient @name="Terrance" />, 100000)
  def charge(patient, amount)
    # IF WE NEED TO CREATE OUR RELATIONSHIP
    # WE MUST HAVE A NEW INSTANCE OF THAT MODEL
    Bill.new(self, patient, amount)
  end

  def bills
    Bill.all.select do |bill|
      bill.doctor == self
    end
  end

  def total_owed
  end


  def average_owed
    total_owed / patients.size
  end

  def patients
    bills.map do |bill|
      bill.patient
    end
  end

end
