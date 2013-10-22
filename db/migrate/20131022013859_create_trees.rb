class CreateTrees < ActiveRecord::Migration

  def change
    create_table :trees do |t|
      t.string :common_name
	  t.string :latin_name
      t.text :description
    end
  end
end
