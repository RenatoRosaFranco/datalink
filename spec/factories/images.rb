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
FactoryBot.define do
  factory :image do
    url { "MyString" }
    imageable_type { "MyString" }
    imageable_id { 1 }
  end
end
