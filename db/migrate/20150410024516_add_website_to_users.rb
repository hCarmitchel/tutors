class AddWebsiteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :text
    add_column :users, :website, :string
    add_column :users, :phone_number, :string
    add_column :users, :tutor_types, :bytea
    add_column :users, :admin, :boolean, default: false
  end
end
