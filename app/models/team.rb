class Team

  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
  end

end
