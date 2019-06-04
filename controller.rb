require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')
also_reload('./models')

get '/rps/:obj1/:obj2' do
  game = Game.new(params[:obj1], params[:obj2])
  @outcome = game.play
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
