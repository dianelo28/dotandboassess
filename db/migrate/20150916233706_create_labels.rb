class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
