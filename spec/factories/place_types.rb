# == Schema Information
#
# Table name: place_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :place_type do
    name { "MyString" }
  end
end
