# frozen_string_literal: true

# == Schema Information
#
# Table name: places
#
#  id            :integer          not null, primary key
#  location      :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  place_type_id :integer
#  user_id       :integer          not null
#
# Indexes
#
#  index_places_on_place_type_id  (place_type_id)
#  index_places_on_user_id        (user_id)
#
# Foreign Keys
#
#  place_type_id  (place_type_id => place_types.id)
#  user_id        (user_id => users.id)
#
class PlaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :location

  # Associations
  belongs_to :place_type

  # Attributes
  attribute :type do |object|
    object.place_type&.name
  end
end
