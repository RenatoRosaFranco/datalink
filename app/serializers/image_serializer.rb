# frozen_string_literal: true

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
class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :file
end
