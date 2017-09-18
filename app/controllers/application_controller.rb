require 'sinatra/base'
require './app/models/super_hero'
require './app/models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/super_hero' do
    @team = Team.new(params[:team])
    params[:team][:hero].each do |deets|
      SuperHero.new(deets)
    end
    @heroes = SuperHero.all
    erb :super_hero
  end

end
