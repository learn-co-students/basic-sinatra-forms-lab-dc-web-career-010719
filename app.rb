require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params[:team_name]
    @coach = params[:coach]
    @point = params[:point]
    @shooting = params[:shooting]
    @power = params[:power]
    @small = params[:small]
    @center = params[:center]
    erb :team
  end

end
