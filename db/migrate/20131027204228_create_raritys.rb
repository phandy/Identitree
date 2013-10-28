class CreateRaritys < ActiveRecord::Migration
  def change
	create_table :raritys do |t|
		t.integer :tree_id
		t.integer :region_id
		t.boolean :is_native
		t.decimal :weight
	end
  end
end
