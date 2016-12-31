class Team
  attr_reader :name, :motto
  @@teams = []

  def initialize(opts={})
    @name = opts[:name]
    @motto = opts[:motto]
  end

  def save
    self.class.all << self
  end
  def self.all
    @@teams
  end
end
