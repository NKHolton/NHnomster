class PhotosController < ApplicationController

	def create
		@photo = current_user.photos.create(photo_params)
		if @place.valid?
			redirect_to root_path
	end

	
	private

	def photo_params
		params.require(:photo).permit(#)
	end
end
