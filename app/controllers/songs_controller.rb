class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def news
    @song = Song.new
  end

  def create
     song_params = params.require( :song ).permit( :title, :year, :video, :artist_id )

     @song = Song.new( song_params )
     @song.user = current_user

     if @song.save
        redirect_to songs_path
     else
        render 'new'
     end
  end

  def user
      @user = User.find( params[:user_id] )

      @songs = Song.where( user: @user ).order( created_at: :desc )
   end

end
