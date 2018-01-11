require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/team' do
      erb :team
    end

    post '/team' do
      # render a template that displays the submitted team data and each member's data.
      erb :team

    end

end
