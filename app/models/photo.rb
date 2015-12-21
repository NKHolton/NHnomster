class Photo < ActiveRecord::Base
	mount_uploader :Picture, PictureUploader
end
