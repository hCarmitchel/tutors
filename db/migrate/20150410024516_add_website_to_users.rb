class AddWebsiteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :blob
    add_column :users, :website, :string
    add_column :users, :phone_number, :string
    add_column :users, :tutor_types, :blob
    add_column :users, :admin, :boolean, default: 0
  end
end
