require 'sinatra/base'
require File.join(File.dirname(__FILE__),'lib','player')

class Battle < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_hit_points = $player_1.hit_points
    @player_2_hit_points = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    session[:message] = 'Good Hit!'
    @message = session[:message]
    $player_1.attack($player_2)
    erb :attack
  end
end
