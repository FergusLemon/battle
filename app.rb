require 'sinatra/base'

class Battle < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1_name]
    session[:player_2] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end
end
