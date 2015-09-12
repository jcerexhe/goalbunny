class ChangeRewardCostInGoals < ActiveRecord::Migration
  def change
  	remove_column :goals, :reward_cost, :integer
  	add_column :goals, :reward_cost, :decimal
  end
end
