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
require 'rails_helper'

RSpec.describe Place, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
