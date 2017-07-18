require 'pry'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/game'

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @result = game.play
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end

###

# get '/rock/scissors' do
#   'Rock wins!'
# end

# get '/:hand1/:hand2' do
#   case
#     when (params[:hand1] == 'rock' && params[:hand2] == 'scissors') || (params[:hand2] == 'rock' && params[:hand1] == 'scissors')
#       return 'Rock wins!'
#     when (params[:hand1] == 'paper' && params[:hand2] == 'scissors') || (params[:hand2] == 'paper' && params[:hand1] == 'scissors')
#       return 'Scissors wins!'
#     when (params[:hand1] == 'rock' && params[:hand2] == 'paper') || (params[:hand2] == 'rock' && params[:hand1] == 'paper')
#       return 'Paper wins!'
#     else
#.      returns 'Draw!'  
#   end
# end