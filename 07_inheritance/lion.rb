class Lion < Feline

  # OVERRIDE

  def initialize(name)
    super
    @claw_length = 1000
    puts "WOOOO"
  end

  def purr
    super
    puts "PURRRRRR!!!!!!!"
  end

  def roar
  end

  def kill
  end


end
