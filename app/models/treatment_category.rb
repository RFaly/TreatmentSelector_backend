class TreatmentCategory < ApplicationRecord
	has_many :treatments, dependent: :destroy
end
