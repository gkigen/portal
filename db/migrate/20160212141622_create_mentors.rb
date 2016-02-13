class CreateMentors < ActiveRecord::Migration
  def up
    create_table :mentors do |t|
	  t.string :name, :limit => 100, :null => false
	  t.string :sex
	  t.integer :age
	  t.string :bio, :limit => 70
	  t.date :DOB
	  t.string :image, :limit => 255		
    t.timestamps
    end
  end

  def down
  	drop_table :mentors
  end	
end
