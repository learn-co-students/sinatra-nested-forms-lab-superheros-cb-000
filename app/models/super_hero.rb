class SuperHero

  attr_accessor :name, :power, :bio

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self
  end


end
