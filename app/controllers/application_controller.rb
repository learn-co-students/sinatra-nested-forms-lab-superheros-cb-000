require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/superhero.rb'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  HERO_COUNT = 3

  get '/' do
    erb :superhero
  end

  post '/team' do
    @team = Team.new(params[:team])
    erb :team
  end

  def format_label(symbol)
    return symbol.to_s.split("_").collect{|s| s.capitalize}.join(" ")
  end

end
