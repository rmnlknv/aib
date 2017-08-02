class Answer < ActiveRecord::Base
	belongs_to :plot
	mount_uploader :attach1, ImageUploader
	mount_uploader :attach2, ImageUploader
	mount_uploader :attach3, ImageUploader
	mount_uploader :attach4, ImageUploader
end
