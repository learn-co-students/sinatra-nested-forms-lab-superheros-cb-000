require 'sinatra/base'
require_relative './../models/hero'
require_relative './../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new({name: params[:team][:name], motto: params[:team][:motto]})

      @heroes = params[:team][:members].collect do |team_member|
        Hero.new(team_member)
      end.each do |hero|
        @team.members << hero
        hero.team = @team
      end

      erb :team
    end
end
