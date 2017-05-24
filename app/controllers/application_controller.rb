require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    team = params[:team]
    @team_name = team[:name]
    @team_motto = team[:motto]
    @team_heros = params[:team][:hero]

    erb :team
    # raise @team_heros.inspect

  end
  

end
