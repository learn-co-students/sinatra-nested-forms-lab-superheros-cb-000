class SuperHeroTeam #< ActiveRecord::Base
#  has_many :superheroes
  attr_accessor :name, :motto

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
  end


end
