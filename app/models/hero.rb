class Hero

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(args)
    @name, @power, @bio = args[:name], args[:power], args[:bio]
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

end