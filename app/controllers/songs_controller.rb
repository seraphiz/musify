class SongsController < ApplicationController
    def create
        @song = Song.new(song_params)
        @song.playlist_id = params[:playlist_id]
        @song.save
        redirect_to @song.playlist, notice: 'La cancion se creo con exito!'
    end 

    def destroy
        @song = Song.find(params[:id])
        @playlist = Playlist.find(params[:playlist_id])
        @song.destroy
        redirect_to @song.playlist, notice: 'La cancion se ha borrado con exito!'
    end

    private

    def song_params
        params.require(:song).permit(:artist, :name)
    end

end
