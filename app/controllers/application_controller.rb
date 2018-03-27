require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # odd
    get '/' do
      erb :super_hero
    end

    post '/team' do
      # just follwing the same patterns from the last lab. mehhh
      # just having to build more of it myself, thats all

      @team = Team.new(params[:team])

      # p params[:team][:hero]

      params[:team][:hero].each do |details|
       Hero.new(details)
     end

     @heros = Hero.all

    #  p @heros
      erb :team
    end
end
