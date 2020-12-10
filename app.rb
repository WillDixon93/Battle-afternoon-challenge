require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/fighters' do
    print params
    @fighter_1 = params[:player_1]
    @fighter_2 = params[:player_2]
    erb :play
  end

  run! if app_file == $0
end