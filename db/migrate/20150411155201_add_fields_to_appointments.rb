class AddFieldsToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :subject_id, :integer
    add_column :appointments, :tutor_type, :string
    add_column :appointments, :location, :string
    add_column :appointments, :capacity, :integer, default: 0
    add_column :appointments, :current_capacity, :integer, default: 0
    add_column :appointments, :full, :boolean, default: false
  end
end
