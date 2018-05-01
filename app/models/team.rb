class Team
  attr_reader :name, :motto

  TEAMS = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
  end

  def Team::all
    TEAMS
  end

  def Team::clear
    TEAMS.clear
  end
  
end
