class TraitmentCategory < ApplicationRecord
	has_many :traitments, dependent: :destroy
end
