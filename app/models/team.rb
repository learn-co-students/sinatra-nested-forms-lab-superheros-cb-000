class Team

  attr_accessor :name, :motto

  @@all = []


  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
  end

  def self.all
        @@all

      end

end
