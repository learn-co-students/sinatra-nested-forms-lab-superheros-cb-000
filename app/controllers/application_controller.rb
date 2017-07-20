require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :new
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:member].each do |member_info|
      Member.new(member_info)
    end

    @members = Member.all

    erb :team
  end

end
