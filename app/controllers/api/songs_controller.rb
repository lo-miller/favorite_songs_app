class Api::SongsController < ApplicationController

  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def create
    @song = Song.create(
      title: params[:title], 
      artist: params[:artist], 
      album: params[:album], 
      year: params[:year]
    )
    render "show.json.jb"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title]
    @song.artist = params[:artist]
    @song.album = params[:album]
    @song.year = params[:year]  
    @song.save  
    render "show.json.jb"
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy
    render json: {message: "song has been removed"}
  end
  
end
