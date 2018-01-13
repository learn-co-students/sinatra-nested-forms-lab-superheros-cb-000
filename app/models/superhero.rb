class Superhero
  attr_accessor :name, :power, :biography, :team
  @@superheroes =[]

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

  def self.clear
    @@superheroes = []
  end
end
