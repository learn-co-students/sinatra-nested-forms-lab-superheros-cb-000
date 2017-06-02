require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  set :public_dir, Proc.new {File.join(root, "../../public/")}

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    params[:team][:members].each do |member_details|
      Hero.new(member_details)
    end
    @heros = Hero.all
    erb :team
  end

end
