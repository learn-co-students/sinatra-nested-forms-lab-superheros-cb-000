class Team

  @@all = []

  attr_accessor :name, :motto

  def initialize(arguments)
    @name = arguments[:name]
    @motto = arguments[:motto]
    @@all << self
  end

  def self.all
    @@all
  end

end
