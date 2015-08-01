class AddPaidToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :paid, :boolean
  end
end
