class TreatmentSelected < ApplicationRecord
	belongs_to :treatment
  belongs_to :patient
end
