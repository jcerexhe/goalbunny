class ChangeDueTypeInGoals < ActiveRecord::Migration
  def change
  	change_column :goals, :due, :string
  end
end
