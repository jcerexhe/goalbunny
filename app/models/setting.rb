# == Schema Information
#
# Table name: settings
#
#  id                                          :integer          not null, primary key
#  mailing_address                             :text
#  goal_cancellation_refund_time_delay_in_days :integer
#  share_completed_goals?                      :boolean
#  dream                                       :text
#  age                                         :integer
#  occupation                                  :string
#  sex                                         :string
#  user_id                                     :integer
#  created_at                                  :datetime         not null
#  updated_at                                  :datetime         not null
#  suburb                                      :string
#  state                                       :string
#  postcode                                    :string
#  country                                     :string
#

class Setting < ActiveRecord::Base
  belongs_to :user
end
