class Blogpost < ActiveRecord::Base
	has_many :comments, as: :commentable, dependent: :destroy

	validates :title, presence: true
	validates :title, length: {minimum: 1}
	validates :content, presence: true
	validates :content, length: {minimum: 1}

	mount_uploader :picture, PictureUploader

	has_attached_file	:photo, :styles => { :small => "150x150"},
						:url => "/assets/blogposts/:id/:basename.:extension",
						:path => ":rails_root/public/assets/blogposts/:id/:basename.:extension"

	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end