class Superhero
  extend StandardMethods::ClassMethods
  include StandardMethods::InstanceMethods

  def self.accessor_symbols
    return [:name, :power, :bio]
  end

  attr_accessor *Superhero.accessor_symbols

end
