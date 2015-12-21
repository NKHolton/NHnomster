class PhotosController < ApplicationController

	before_action :authenticate_user!
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
