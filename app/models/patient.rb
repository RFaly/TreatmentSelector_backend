class Patient < ApplicationRecord
	has_many :treatment_selecteds
  has_many :traitments, through: :treatment_selecteds
end
