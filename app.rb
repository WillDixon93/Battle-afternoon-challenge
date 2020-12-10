require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do 
    erb :index
  end

  post '/fighters' do
    print params
    session[:fighter_1] = params[:player_1]
    session[:fighter_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @fighter_1 = session[:fighter_1]
    @fighter_2 = session[:fighter_2]
    erb :play
  end

  run! if app_file == $0
end