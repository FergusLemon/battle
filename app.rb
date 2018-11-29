require 'sinatra/base'
require File.join(File.dirname(__FILE__),'lib','player')
require File.join(File.dirname(__FILE__),'lib','game')

class Battle < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  before do
    @game = Game.games.last
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    if @game.over?
      redirect '/result'
    else
      @game.attack(@game.defender)
      erb :attack
    end
  end

  get '/result' do
    erb :result
  end
end
