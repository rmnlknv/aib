class Plot < ActiveRecord::Base
	belongs_to :category
	has_many :answers
end
