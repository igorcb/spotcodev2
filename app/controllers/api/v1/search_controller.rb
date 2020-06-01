class Api::V1::SearchController < ApplicationController
  def index
    @songs = Song.where("title iLIKE ?", "%#{params[:query]}%")
    @albums = Album.where("title iLIKE ?", "%#{params[:query]}%")
    @artists = Artist.where("name iLIKE ?", "%#{params[:query]}%")
  end
end
