class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :subjects, :bytea
    add_column :users, :tutor, :boolean, default: false
    add_column :users, :school, :string
  end
end
