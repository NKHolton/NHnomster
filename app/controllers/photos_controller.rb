class PhotosController < ApplicationController

	before_action :authenticate_user!
	
	def show
		@place = Place.find(params[:id])
		@photo = Photo.new
	end

	def create
		@photo = Photo.find(params[:place_id])
		@photo.photos.create(photo_params.merge(:user => current_user))
		redirect_to place_path(@place)
	end

	
	private

	def photo_params
		params.require(:photo).permit(:picture,:caption)
	end
end
