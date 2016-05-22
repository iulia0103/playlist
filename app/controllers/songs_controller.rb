class SongsController < ApplicationController

  def index
    @songs = Song.all

    if params[:search]
      @songs = Song.search(params[:search])
    else
      @songs = Song.all
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
     song_params = params.require( :song ).permit( :title, :year, :video, :artist_id )

     @song = Song.new( song_params )
     @song.user = current_user

     if @song.save
        redirect_to "/artists/:artist_id/songs.id"
     else
        render 'new'
     end
  end

  def destroy
     @song = Song.find( params[:id] )

     @song.destroy

     redirect_to "/artists/:artist_id/songs.id"
  end


  def user
      @user = User.find( params[:user_id] )

      @songs = Song.where( user: @user ).order( created_at: :desc )
   end

end
