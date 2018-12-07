class Hero
  attr_accessor :team
  attr_reader :name, :power, :bio
  @@heroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @team = nil
  end

  def self.all
    @@heroes
  end

end
