class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :reward
      t.integer :reward_cost
      t.datetime :created
      t.datetime :due
      t.datetime :completed_date_time
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
