require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/hero.rb'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @heroes = []
      #
      params[:team][:heroes].each do |details|
        @heroes << Hero.new(details)
    end

    erb :team
  end

end
