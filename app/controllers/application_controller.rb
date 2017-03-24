require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params['team']
      
      params['team']['hero'].each do |h|
    		hero = Hero.new(h)
    	end
      
    	@heroes = Hero.all 
      erb :team
    end
  
end
