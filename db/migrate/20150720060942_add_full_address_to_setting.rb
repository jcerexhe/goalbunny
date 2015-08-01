class AddFullAddressToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :suburb, :string
    add_column :settings, :state, :string
    add_column :settings, :postcode, :string
    add_column :settings, :country, :string
  end
end
