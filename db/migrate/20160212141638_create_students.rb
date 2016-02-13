class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
	  t.integer :mentor_id, :null => false
    t.string :name, :limit => 100, :null => false
	  t.string :sex
	  t.integer :age
	  t.date :DOB
	  t.string :current_school
	  t.string :current_level
	  t.string :country
	  t.string :sat_score	  	
     t.timestamps
    end

    add_index("mentors","id")
    add_index("students","id")
  end

  def down
  	drop_table :students
  end	
end
