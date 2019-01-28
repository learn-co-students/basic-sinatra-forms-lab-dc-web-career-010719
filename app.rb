require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @team = {}
    params.each do |k,v|
      label = k.gsub(/_/, ' ').gsub(/(^|\s)\w/, &:upcase)
      @team[label] = v
    end

    erb :team
  end
end
