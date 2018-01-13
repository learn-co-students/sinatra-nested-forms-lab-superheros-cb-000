class Team
  attr_accessor :name, :motto, :members
  @@teams = []

  def initialize(details)
    @name = details[:name]
    @motto = details[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

  def clear
    @@teams = []
  end
end
