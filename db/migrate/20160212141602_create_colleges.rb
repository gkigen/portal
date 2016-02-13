class CreateColleges < ActiveRecord::Migration
  def up
    create_table :colleges do |t|
    t.string :name, :limit => 100
    t.string :country
	  t.integer :sat_max_score
	  t.integer :sat_min_score
	  t.integer :tuition_fees
    t.timestamps
    end
  end
  #add_index :colleges, ["id"]

  def down
  	drop_table :colleges  
  end	
end
