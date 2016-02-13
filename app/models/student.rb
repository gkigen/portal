class Student < ActiveRecord::Base
	belongs_to :mentor, :foreign_key => "mentor_id"
	has_and_belongs_to_many :colleges
end
