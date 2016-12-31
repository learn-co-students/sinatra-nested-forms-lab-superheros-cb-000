class SuperHero
  attr_reader :name, :power, :bio

  @@super_heroes = []

  def initialize(opts={})
    @name = opts[:name]
    @power = opts[:power]
    @bio = opts[:bio]
  end

  def save
    self.class.all << self
  end

  def self.all
    @@super_heroes
  end
end
