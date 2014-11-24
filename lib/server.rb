require 'sinatra/base'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_dir, Proc.new { File.join(root, "..", "public") }
  enable :sessions


  get '/' do
    erb :index
  end

  post '/' do
    @player_name = params[:player_name]
    erb :game
  end

  get '/game' do
    @player_name = params[:player_name]
    erb :game
  end

  post '/game' do

    @player_name = params[:player_name]
    player_choice = params[:choice].to_sym

    defeat = { rock: :scissors, paper: :rock, scissors: :paper }
    computer_choice = defeat.keys.sample

    if computer_choice == player_choice
      @result = 'Draw!'
    elsif computer_choice == defeat[player_choice]
      @result = 'You won!'
    else
      @result = 'You lost!'
    end

    erb :game
  end


end
