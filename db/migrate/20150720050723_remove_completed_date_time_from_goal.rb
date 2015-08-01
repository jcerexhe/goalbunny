class RemoveCompletedDateTimeFromGoal < ActiveRecord::Migration
  def change
    remove_column :goals, :completed_date_time, :datetime
  end
end
