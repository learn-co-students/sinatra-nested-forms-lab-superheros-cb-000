class Team
  attr_accessor :name, :motto, :heros

  def initialize(args)
    @name, @motto = args[:name], args[:motto]
    @heros = []
    create_and_add_heros(args[:heros])
    self
  end

  private
  def create_and_add_heros(heros_raw_info)
    heros_raw_info.each do |hero_info|
      hero = Hero.new(hero_info)
      @heros << hero
    end
  end
end
