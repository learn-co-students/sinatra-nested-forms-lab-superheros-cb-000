class SuperHero #< ActiveRecord::Base
#  belongs_to :superheroteam
attr_accessor :name, :power, :bio

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:biography]
  end

end
