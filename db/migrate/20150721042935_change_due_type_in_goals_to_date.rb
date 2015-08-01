class ChangeDueTypeInGoalsToDate < ActiveRecord::Migration
  def change
  	change_column :goals, :due, :date
  end
end
