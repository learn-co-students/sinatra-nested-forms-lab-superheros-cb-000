class Superhero

  @@super_heroes = []

  attr_accessor :name, :power, :bio

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio  = args[:bio]
    self.class.all << self
  end

  def self.all
    @@super_heroes
  end

end
