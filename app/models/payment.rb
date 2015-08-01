# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  amount     :decimal(, )
#  goal_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Payment < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user
end
