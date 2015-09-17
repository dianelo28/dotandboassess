class AddFieldsToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :from_company, :string
    add_column :labels, :from_street1, :string
    add_column :labels, :from_street2, :string
    add_column :labels, :from_city, :string
    add_column :labels, :from_state, :string
    add_column :labels, :from_zip, :string
    add_column :labels, :from_phone, :string
    add_column :labels, :width, :integer
    add_column :labels, :length, :integer
    add_column :labels, :height, :integer
    add_column :labels, :weight, :integer
  end
end
