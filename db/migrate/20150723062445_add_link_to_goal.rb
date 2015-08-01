class AddLinkToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :reward_link, :text
  end
end
