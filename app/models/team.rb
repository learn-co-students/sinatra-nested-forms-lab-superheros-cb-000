class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(args)
    @name, @motto = args[:name], args[:motto]
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

end