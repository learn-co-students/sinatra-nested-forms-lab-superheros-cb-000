require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

      get "/" do
      
      
      erb :super_hero
    end
    
    post "/teams" do 
      
      @team_name  = params[:team][:name]
      @team_motto = params[:team][:motto]
      
      @team_heroes = params[:team][:members]
      
      @hero_names = []
      @hero_powers = []
      @hero_bios = []
      @team_heroes.each do |x|
        @hero_names << x["name"]
        @hero_powers << x["power"]
        @hero_bios << x["biography"]
      end
      
      erb :team
    end

end
