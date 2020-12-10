class Treatment < ApplicationRecord
	belongs_to :treatment_category
	has_many :patients, dependent: :destroy
end
