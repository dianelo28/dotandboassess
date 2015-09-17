class AddAddressToLabels < ActiveRecord::Migration

	create_table :to_address do |t|
		t.belongs_to :labels, index:true
		t.string   :name
		t.string   :street1
		t.string   :street2
		t.string   :city
		t.string   :state
		t.string   :zip
		t.string   :country
		t.string   :phone
	end
end
