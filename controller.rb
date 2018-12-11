require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/rps_model')
also_reload('./models/*')

get '/rps/:player1_guess/:player2_guess' do
  @result_string =  RPSGame.check_win(params[:player1_guess], params[:player2_guess])
  erb(:result)
end

get '/' do
  erb(:home)
end
