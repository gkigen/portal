class CollegesStudentsJoin < ActiveRecord::Migration
  def up
      create_table :colleges_students, :id => false do |t|
            t.integer "student_id", :null => false
            t.integer "college_id", :null => false
      end
      add_index :colleges_students, ["college_id", "student_id"]  
  end

  def down
      drop_table :colleges_students
  end 
end
