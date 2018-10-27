class Team
  attr_accessor :name, :motto, :members

  def initialize(team_data = {})
    @name = team_data[:name] || nil
    @motto = team_data[:motto] || nil
    @members = team_data[:members] || []
  end
end
