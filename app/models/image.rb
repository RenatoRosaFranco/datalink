# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  file           :string
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#
class Image < ApplicationRecord
	# Uploader
	has_one_attached :file

	# Association
	belongs_to :imageable, polymorphic: true
end
