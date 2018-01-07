class Hero
  attr_reader :name, :power, :biography

  @@hero = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@hero << self
  end

  def self.all
    @@hero
  end

  def self.clear
    @@clear
  end 


end 