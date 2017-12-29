class Hero
  attr_accessor :name, :power, :bio
  HEROES =[]

  def initialize(arr)
    @name = arr[:name]
    @power = arr[:power]
    @bio = arr[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end


end
