class Team
  
  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(params)
    self.name, self.motto = params[:name], params[:motto]
    @@all << self
  end
end
