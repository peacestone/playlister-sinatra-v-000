require "pry"
class SongsController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'

  end

  get "/songs/:slug" do
    @song = Song.find_by_slug(params[:slug])
    #binding.pry
    erb :"/songs/show"
  end



end
