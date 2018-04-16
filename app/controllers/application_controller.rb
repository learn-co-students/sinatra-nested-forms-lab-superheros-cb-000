require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team
  end

  post '/super_hero' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |params|
      SuperHero.new(params)
    end

    @SuperHeros = SuperHero.all

    erb :super_hero
  end

end
