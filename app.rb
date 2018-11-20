require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    @player_2 = params[:player_2_name]
    erb :play
  end
end
