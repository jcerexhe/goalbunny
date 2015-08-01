class ChangeDueTypeInGoalsToDate < ActiveRecord::Migration
  def change
  	remove_column :goals, :due, :datetime
  	add_column :goals, :due, :date
  end
end
