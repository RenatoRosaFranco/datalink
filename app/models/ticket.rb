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
class Ticket < ApplicationRecord
	# Association
	has_one :image, as: :imageable
	belongs_to :user
end
