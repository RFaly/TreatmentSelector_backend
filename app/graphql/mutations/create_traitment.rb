class Mutations::CreateTraitment < Mutations::BaseMutation
	argument :name_en, String, required: true
	argument :name_fr, String, required: false
	argument :name_mg, String, required: false
	argument :traitment_category_id, ID, required: true

	field :traitment, Types::TraitmentType, null: false
	field :errors, [String], null: false

	def resolve(name_en:, name_fr:, name_mg:, traitment_category_id:)
		traitment = Traitment.new(name_en: name_en, name_fr: name_fr, name_mg: name_mg, traitment_category_id: traitment_category_id)
		if traitment.save
			{
				traitment: traitment,
				errors: []
			}
		else
			{
				traitment: nil,
				errors: traitment.errors.full_messages
			}
		end
	end

end


