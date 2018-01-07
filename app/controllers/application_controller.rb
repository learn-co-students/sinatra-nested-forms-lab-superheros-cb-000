require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    resp = Rack::Response.new
    resp.status = 200


    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |details|
      Hero.new(details)
    end
    @hero = Hero.all

    erb :team
  end
end
