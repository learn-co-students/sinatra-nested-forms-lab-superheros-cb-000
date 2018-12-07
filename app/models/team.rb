class Team
  attr_accessor :name, :motto
  @@teams = []
  
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @members = []
    @@teams << self
  end

  def add_members(hero)
    @members << hero
    hero.team = self
  end

  def self.all
    @@teams
  end

  def show_members
    @members
  end

end