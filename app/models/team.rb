class Team
  extend StandardMethods::ClassMethods
  include StandardMethods::InstanceMethods

  def self.accessor_symbols
    return [:name, :motto]
  end

  def self.reader_symbols
    return [:superheros]
  end

  attr_accessor *Team.accessor_symbols
  attr_reader *Team.reader_symbols

  def superheros=(superhero_attributes_array)
    @superheros = []
    superhero_attributes_array.each{|attributes| @superheros << Superhero.new(attributes)}
    return @superheros
  end

end
