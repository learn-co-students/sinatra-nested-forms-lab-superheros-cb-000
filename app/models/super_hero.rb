class Superhero

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(arguments)
    @name = arguments[:name]
    @power = arguments[:power]
    @bio = arguments[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

end
