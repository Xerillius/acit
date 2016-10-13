class Gallery < ActiveRecord::Base
	mount_uploader :picture, PictureUploader

	has_attached_file	:photo, :styles => { :small => "150x150"},
						:url => "/assets/galleries/:id/:basename.:extension",
						:path => ":rails_root/public/assets/galleries/:id/:basename.:extension"

	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end