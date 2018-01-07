require 'sinatra/base'
require 'sinatra/activerecord'
require 'pry'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    "this route works"
    @team = SuperHeroTeam.new(params[:team])
    member1 = {name: params[:team][:members][0][:name], power: params[:team][:members][0][:power], biography: params[:team][:members][0][:biography]}
    @member1 = SuperHero.new(member1)
    member2 = {name: params[:team][:members][1][:name], power: params[:team][:members][1][:power], biography: params[:team][:members][1][:biography]}
    @member2 = SuperHero.new(member2)
    member3 = {name: params[:team][:members][2][:name], power: params[:team][:members][2][:power], biography: params[:team][:members][2][:biography]}
    @member3 = SuperHero.new(member3)
    #binding.pry
    erb :team
  end

end
