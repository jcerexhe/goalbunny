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

class Goal < ActiveRecord::Base
  belongs_to :user
  has_one :payment

  validates :title, :reward_link, :reward_cost, presence: true

  # after_create :

  def self.not_completed
    where(:completed => [nil, false])
  end

  def self.completed
    where(completed: true)
  end

  def self.ordered_by_due_date
    order(due: :desc)
  end

  def self.not_completed_on_create

  end

  def update_completed
    self.update_attributes(completed: true)
  end

  def self.paid
    where(paid: true)
  end

  # def self.image_url
  #   self.image.find(params[:id])
  # end
  
  # validate :starts_before_ends

  # def starts_before_ends
  # 	if created > due
  # 		errors.add(:due, "Cannot be before start date/time")
  # 	end
  # end

  # after_create :back_to_goals

  # def back_to_goals
  # 	Goal.create(goal: self)
  # end
end
