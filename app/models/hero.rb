class Hero
	attr_accessor :name, :power, :bio

	HEROES = []

	def self.all 
		HEROES
	end

	def initialize(hero_info)
		@name = hero_info['name']
		@power = hero_info['power']
		@bio = hero_info['bio']

		HEROES << self
	end
end