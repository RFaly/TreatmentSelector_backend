class Treatment < ApplicationRecord
	belongs_to :treatment_category

	has_many :treatment_selecteds
  has_many :patients, through: :treatment_selecteds
end
