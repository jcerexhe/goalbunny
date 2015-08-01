class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.text :mailing_address
      t.integer :goal_cancellation_refund_time_delay_in_days
      t.boolean :share_completed_goals?
      t.text :dream
      t.integer :age
      t.string :occupation
      t.string :sex
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
