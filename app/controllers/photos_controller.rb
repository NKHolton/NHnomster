class PhotosController < ApplicationController



	private

	def photo_params
		params.require(:photo).permit(#)
	end
end
