# frozen_string_literal: true

# == Schema Information
#
# Table name: place_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PlaceTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name

  # Associations
  has_many :places
end
