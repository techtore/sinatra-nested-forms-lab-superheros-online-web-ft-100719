require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do 
    erb :'views/super_hero'
  end
  
  post '/teams' do 
      @team = Team.new(params[:team])
      
      params[:team][:heroes].each do |details|
        Heroes.new(details)
      end
      @ships = Ship.all
      
      erb :'pirates/show'
  end

end
