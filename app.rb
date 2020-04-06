require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :super_hero
  end

    post '/teams' do
    @team = params[:team]
    erb :"team"
  end

    erb :team
  end
end