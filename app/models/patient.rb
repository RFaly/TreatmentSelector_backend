class Patient < ApplicationRecord
	has_many :treatment_selecteds
  has_many :treatments, through: :treatment_selecteds
end
