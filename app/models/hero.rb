class Hero
  attr_accessor :name, :power, :bio

  def initialize(args)
    @name, @power, @bio = args[:name], args[:power], args[:bio]
  end
end
