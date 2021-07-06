class Member
  attr_accessor :power, :bio, :name
  @@all = []
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
