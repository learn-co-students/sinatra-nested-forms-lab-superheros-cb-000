class SuperHero

  attr_accessor :name, :power, :biography

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    self.name, self.power, self.biography = params[:name], params[:power], params[:biography]
    @@all << self
  end

end
