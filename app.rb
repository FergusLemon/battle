require 'sinatra/base'

class Battle < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  INITIAL_HIT_POINTS = 100

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
    @player_1_hit_points = INITIAL_HIT_POINTS
    @player_2_hit_points = INITIAL_HIT_POINTS
    erb :play
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    session[:message] = 'Good Hit!'
    @message = session[:message]
    erb :attack
  end
end
