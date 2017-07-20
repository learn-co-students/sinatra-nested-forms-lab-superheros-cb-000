require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    set :public_dir, Proc.new {File.join(root, "../public/")}

 get '/' do

   erb :super_hero
 end

 post '/teams' do

   @params = params
    @team = Team.new(params[:team])

    @members =  params[:team][:members]
    @members.each do |member|
      Superhero.new(member)
    end

    @superheros = Superhero.all
   erb :team
 end


end
