class Team

  attr_accessor :name, :motto

  @@teams = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    self.class.all << self
  end

  def self.all
    @@teams
  end

end
