# frozen_string_literal: true

# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  description :text
#  kind        :integer
#  location    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_tickets_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class TicketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :kind, :description, :location

  # Associations
  has_one :image, serializer: ImageSerializer
  belongs_to :user

  # Attributes
  attribute :image_url do |object|
    ImageHelper.image_path(object)
  end
end
