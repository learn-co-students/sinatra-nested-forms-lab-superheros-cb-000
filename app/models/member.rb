class Member
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(params)
    self.name = params[:name]
    self.power = params[:power]
    self.bio = params[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
  
end
