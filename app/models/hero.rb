class Hero
  attr_accessor :name, :power, :bio

  @@heros = []

  def initialize(attributes)
    attributes.each do |attr, value|
      self.send("#{attr}=", value)
    end
    @@heros << self
  end

  def self.all
    @@heros
  end

end
