class PictureUploader < CarrierWave::Uploader::Base
	include Cloudinary::CarrierWave

	process :convert => 'jpg'
	process :tags => ['post_picture']

	version :standard do
		process :resize_to_fill => [100, 50, :north]
	end

	version :thumbnail do
		resize_to_fit(50, 50)
	end
end
