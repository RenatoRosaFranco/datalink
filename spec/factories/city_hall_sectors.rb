# == Schema Information
#
# Table name: city_hall_sectors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :city_hall_sector do
    name { "MyString" }
  end
end
