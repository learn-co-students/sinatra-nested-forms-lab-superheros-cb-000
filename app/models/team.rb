class Team
  attr_reader :name, :motto

  TEAMS = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    TEAMS << self
  end

  def Team::all
    TEAMS
  end

end
