class College < ActiveRecord::Base
	has_and_belongs_to_many :applicants, :class_name =>"Student", dependent: :destroy
end
