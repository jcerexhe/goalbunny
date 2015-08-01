# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string
#  reward      :string
#  reward_cost :integer
#  created     :datetime
#  due         :date
#  completed   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  reward_link :text
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
