class Api::SongsController < ApplicationController

  def index
    # @songs = Song.all
    p "Hello"
    render "index.json.jb"
  end

  def create
    #function here
    render "show.json.jb"
  end

  def 

end
