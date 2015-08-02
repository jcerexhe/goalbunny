class AddItemDetailsToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :item_details, :text
    add_column :goals, :image, :text
  end
end
