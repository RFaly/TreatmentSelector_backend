class Traitment < ApplicationRecord
	belongs_to :traitment_category

	has_many :treatment_selecteds
  has_many :patients, through: :treatment_selecteds
end
